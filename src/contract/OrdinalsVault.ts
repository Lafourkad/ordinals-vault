import { u256 } from '@btc-vision/as-bignum/assembly';
import {
    Address,
    Blockchain,
    BytesWriter,
    Calldata,
    EMPTY_POINTER,
    MLDSASecurityLevel,
    OP721,
    OP721InitParameters,
    Revert,
    SafeMath,
    StoredMapU256,
    StoredString,
    StoredU256,
} from '@btc-vision/btc-runtime/runtime';
import { sha256 } from '@btc-vision/btc-runtime/runtime/env/global';

const burnAddressPointer: u16 = Blockchain.nextPointer;
const verifiedBurnsPointer: u16 = Blockchain.nextPointer;
const burnBlockHeightsPointer: u16 = Blockchain.nextPointer;
const mintedInscriptionsPointer: u16 = Blockchain.nextPointer;
const oracleKeyHashPointer: u16 = Blockchain.nextPointer;
const usedNoncesPointer: u16 = Blockchain.nextPointer;
const collectionIdHashPointer: u16 = Blockchain.nextPointer;

/**
 * OrdinalsVault — Gasless-oracle OP721 bridge for Bitcoin Ordinals.
 *
 * Bridge flow (three steps):
 *
 * 1. BURN (Bitcoin)
 *    User sends inscription UTXO to `burnAddress`.
 *    Burn TX format:
 *      vin[0]:  UTXO holding the inscription
 *      vout[0]: burnAddress
 *      vout[1]: OP_RETURN <burner_opnet_address_32_bytes>
 *
 * 2. ATTEST (Oracle plugin — gasless)
 *    Oracle detects the burn, signs an attestation OFF-CHAIN using ML-DSA-44.
 *    Oracle exposes GET /attestation/:txid →
 *      { inscriptionId, burner, deadline, nonce, oraclePublicKey, oracleSig }.
 *    Oracle pays ZERO gas — never submits an OPNet transaction.
 *
 * 3. CLAIM + MINT (User)
 *    User fetches attestation from oracle REST endpoint.
 *    User calls recordBurnWithAttestation(
 *      inscriptionId, burner, deadline, nonce, oraclePublicKey, oracleSig
 *    ).
 *    Contract verifies:
 *      1. sha256(oraclePublicKey) == _oracleKeyHash (stored binding)
 *      2. ML-DSA-44 signature verification via verifyMLDSASignature
 *    User then calls mint(inscriptionId) from their OPNet wallet.
 *    User pays their own gas — oracle is never involved in OPNet transactions.
 */
@final
export class OrdinalsVault extends OP721 {
    /** Bitcoin address where inscriptions must be sent to burn */
    private readonly _burnAddress: StoredString;

    /** inscriptionHash → FNV-64 hash of burner address (0 = not recorded) */
    private readonly _verifiedBurns: StoredMapU256;

    /** inscriptionHash → block number when burn was recorded (0 = not recorded) */
    private readonly _burnBlockHeights: StoredMapU256;

    /** inscriptionHash → tokenId + 1 (0 = not minted, prevents double-mint) */
    private readonly _mintedInscriptions: StoredMapU256;

    /**
     * sha256(oracleMLDSAPublicKey) stored as u256.
     * The oracle's 1312-byte ML-DSA-44 public key must hash to this value.
     * Callers pass the full public key in calldata; the contract validates
     * the hash before running ML-DSA signature verification.
     */
    private readonly _oracleKeyHash: StoredU256;

    /** nonce (u256) → u256.One if used (anti-replay protection) */
    private readonly _usedNonces: StoredMapU256;

    /**
     * sha256(collectionSlug) stored as u256.
     * Included in attestation hash to bind each vault to a specific collection.
     * Oracle must sign attestations with the matching collectionIdHash.
     * Set to u256.Zero for universal (legacy) mode — any inscription accepted.
     */
    private readonly _collectionIdHash: StoredU256;

    public constructor() {
        super();
        this._burnAddress = new StoredString(burnAddressPointer);
        this._verifiedBurns = new StoredMapU256(verifiedBurnsPointer);
        this._burnBlockHeights = new StoredMapU256(burnBlockHeightsPointer);
        this._mintedInscriptions = new StoredMapU256(mintedInscriptionsPointer);
        this._oracleKeyHash = new StoredU256(oracleKeyHashPointer, EMPTY_POINTER);
        this._usedNonces = new StoredMapU256(usedNoncesPointer);
        this._collectionIdHash = new StoredU256(collectionIdHashPointer, EMPTY_POINTER);
    }

    /**
     * One-time initialization at deployment.
     *
     * @param calldata - name (string), symbol (string), maxSupply (u256),
     *                   burnAddress (string), oracleKeyHash (u256 = sha256 of the
     *                   oracle's 1312-byte ML-DSA-44 public key, big-endian),
     *                   collectionIdHash (u256 = sha256 of BIS collection slug,
     *                   or u256.Zero for universal/legacy mode)
     */
    public override onDeployment(calldata: Calldata): void {
        const name: string = calldata.readStringWithLength();
        const symbol: string = calldata.readStringWithLength();
        const maxSupply: u256 = calldata.readU256();
        const burnAddress: string = calldata.readStringWithLength();
        const oracleKeyHash: u256 = calldata.readU256();
        const collectionIdHash: u256 = calldata.readU256();

        this.instantiate(
            new OP721InitParameters(name, symbol, '', maxSupply),
        );

        this._burnAddress.value = burnAddress;
        this._oracleKeyHash.value = oracleKeyHash;
        this._collectionIdHash.value = collectionIdHash;
    }

    /**
     * Records a verified Ordinals burn using an off-chain ML-DSA-44 oracle attestation.
     *
     * The oracle watches Bitcoin blocks for burns to `burnAddress`, verifies
     * the inscription via the local ord node, then signs an attestation
     * off-chain with ML-DSA-44. The user fetches this attestation and submits
     * it here — paying their own gas. The oracle pays nothing.
     *
     * Attestation hash (must match oracle plugin's `buildAttestationHash` exactly):
     *   sha256(contractAddress || writeU32(inscriptionId.len) || inscriptionId
     *          || burner || deadline_u64_BE || nonce_u256 || collectionIdHash_u256)
     *
     * @param calldata - inscriptionId (string), burner (address),
     *                   deadline (u64, block height), nonce (u256),
     *                   collectionIdHash (u256, sha256 of collection slug — must match stored value),
     *                   oraclePublicKey (bytes, ML-DSA-44 1312-byte key),
     *                   oracleSig (bytes, ML-DSA-44 2420-byte signature)
     * @returns success (bool)
     */
    @method(
        { name: 'inscriptionId', type: ABIDataTypes.STRING },
        { name: 'burner', type: ABIDataTypes.ADDRESS },
        { name: 'deadline', type: ABIDataTypes.UINT64 },
        { name: 'nonce', type: ABIDataTypes.UINT256 },
        { name: 'collectionIdHash', type: ABIDataTypes.UINT256 },
        { name: 'oraclePublicKey', type: ABIDataTypes.BYTES },
        { name: 'oracleSig', type: ABIDataTypes.BYTES },
    )
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    public recordBurnWithAttestation(calldata: Calldata): BytesWriter {
        const inscriptionId: string = calldata.readStringWithLength();
        const burner: Address = calldata.readAddress();
        const deadline: u64 = calldata.readU64();
        const nonce: u256 = calldata.readU256();
        const collectionIdHash: u256 = calldata.readU256();
        const oraclePublicKey: Uint8Array = calldata.readBytesWithLength();
        const oracleSig: Uint8Array = calldata.readBytesWithLength();

        // 1. Deadline check (block height — tamper-proof)
        if (Blockchain.block.number > deadline) {
            throw new Revert('OrdinalsVault: attestation expired');
        }

        // 2. Anti-replay: nonce must not have been used
        if (!u256.eq(this._usedNonces.get(nonce), u256.Zero)) {
            throw new Revert('OrdinalsVault: nonce already used');
        }

        // 3. Burn must not already be recorded
        const key: u256 = this.hashString(inscriptionId);
        if (!u256.eq(this._verifiedBurns.get(key), u256.Zero)) {
            throw new Revert('OrdinalsVault: burn already recorded');
        }
        if (!u256.eq(this._mintedInscriptions.get(key), u256.Zero)) {
            throw new Revert('OrdinalsVault: inscription already minted');
        }

        // 4. Verify collection binding — attestation must be for THIS collection
        const storedCollectionId: u256 = this._collectionIdHash.value;
        if (!u256.eq(storedCollectionId, u256.Zero)) {
            // Collection-specific vault: collectionIdHash must match exactly
            if (!u256.eq(collectionIdHash, storedCollectionId)) {
                throw new Revert('OrdinalsVault: collection ID mismatch');
            }
        }

        // 5. Verify oracle public key binding (sha256 of provided key == stored hash)
        const pubKeyHashBytes: Uint8Array = sha256(oraclePublicKey);
        const pubKeyHash: u256 = u256.fromBytes(pubKeyHashBytes, false);
        if (!u256.eq(pubKeyHash, this._oracleKeyHash.value)) {
            throw new Revert('OrdinalsVault: unknown oracle public key');
        }

        // 6. Verify ML-DSA-44 oracle signature
        const hash: Uint8Array = this.buildAttestationHash(inscriptionId, burner, deadline, nonce, collectionIdHash);
        if (!Blockchain.verifyMLDSASignature(MLDSASecurityLevel.Level2, oraclePublicKey, oracleSig, hash)) {
            throw new Revert('OrdinalsVault: invalid oracle signature');
        }

        // 7. Mark nonce used and record burn
        this._usedNonces.set(nonce, u256.One);
        this._verifiedBurns.set(key, this.hashAddress(burner));
        this._burnBlockHeights.set(key, u256.fromU64(Blockchain.block.number));

        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    /**
     * Mints an OP721 token for a verified Ordinals burn.
     *
     * Requirements:
     * - Burn must have been recorded via recordBurnWithAttestation.
     * - Caller must be the burner specified in the attestation.
     * - At least 1 block must have elapsed since the burn was recorded.
     *
     * @param calldata - inscriptionId (string)
     * @returns tokenId (u256)
     */
    @method({ name: 'inscriptionId', type: ABIDataTypes.STRING })
    @returns({ name: 'tokenId', type: ABIDataTypes.UINT256 })
    @emit('Transferred')
    public mint(calldata: Calldata): BytesWriter {
        const inscriptionId: string = calldata.readStringWithLength();
        const caller: Address = Blockchain.tx.sender;
        const key: u256 = this.hashString(inscriptionId);

        const storedBurnerHash: u256 = this._verifiedBurns.get(key);
        if (u256.eq(storedBurnerHash, u256.Zero)) {
            throw new Revert('OrdinalsVault: burn not verified');
        }

        if (!u256.eq(storedBurnerHash, this.hashAddress(caller))) {
            throw new Revert('OrdinalsVault: caller is not the recorded burner');
        }

        const burnBlock: u256 = this._burnBlockHeights.get(key);
        const currentBlock: u256 = u256.fromU64(Blockchain.block.number);
        if (!u256.gt(currentBlock, burnBlock)) {
            throw new Revert('OrdinalsVault: must wait 1 block after attestation');
        }

        if (!u256.eq(this._mintedInscriptions.get(key), u256.Zero)) {
            throw new Revert('OrdinalsVault: inscription already minted');
        }

        const tokenId: u256 = this._nextTokenId.value;
        if (u256.ge(tokenId, this.maxSupply)) {
            throw new Revert('OrdinalsVault: max supply reached');
        }

        this._mint(caller, tokenId);
        this._nextTokenId.value = SafeMath.add(tokenId, u256.One);
        this._setTokenURI(tokenId, inscriptionId);
        this._mintedInscriptions.set(key, SafeMath.add(tokenId, u256.One));

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(tokenId);
        return writer;
    }

    /**
     * Rotates the oracle key hash. Only callable by the contract deployer.
     *
     * To rotate the oracle:
     *   1. Generate a new ML-DSA-44 keypair
     *   2. Compute sha256(newPublicKey) as a u256
     *   3. Call setOracle(newKeyHash)
     *   4. Update the oracle plugin with the new seed
     *
     * @param calldata - newKeyHash (u256 = sha256 of new ML-DSA-44 public key)
     * @returns success (bool)
     */
    @method({ name: 'newKeyHash', type: ABIDataTypes.UINT256 })
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    public setOracle(calldata: Calldata): BytesWriter {
        this.onlyDeployer(Blockchain.tx.sender);
        const newKeyHash: u256 = calldata.readU256();
        this._oracleKeyHash.value = newKeyHash;
        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    /**
     * Returns the burn/mint status of an inscription.
     *
     * @param calldata - inscriptionId (string)
     * @returns verified (bool), minted (bool)
     */
    @method({ name: 'inscriptionId', type: ABIDataTypes.STRING })
    @returns(
        { name: 'verified', type: ABIDataTypes.BOOL },
        { name: 'minted', type: ABIDataTypes.BOOL },
    )
    public getBurnStatus(calldata: Calldata): BytesWriter {
        const inscriptionId: string = calldata.readStringWithLength();
        const key: u256 = this.hashString(inscriptionId);

        const verified: bool = !u256.eq(this._verifiedBurns.get(key), u256.Zero);
        const minted: bool = !u256.eq(this._mintedInscriptions.get(key), u256.Zero);

        const writer: BytesWriter = new BytesWriter(2);
        writer.writeBoolean(verified);
        writer.writeBoolean(minted);
        return writer;
    }

    /**
     * Returns the Bitcoin burn address for this collection.
     *
     * @returns burnAddress (string)
     */
    @method()
    @returns({ name: 'burnAddress', type: ABIDataTypes.STRING })
    public getBurnAddress(_: Calldata): BytesWriter {
        const addr: string = this._burnAddress.value;
        const encoded: ArrayBuffer = String.UTF8.encode(addr);
        const bytes: Uint8Array = Uint8Array.wrap(encoded);
        const writer: BytesWriter = new BytesWriter(4 + bytes.length);
        writer.writeU32(bytes.length);
        writer.writeBytes(bytes);
        return writer;
    }

    /**
     * Returns the collection ID hash for this vault.
     * u256.Zero means universal mode (any inscription accepted).
     *
     * @returns collectionIdHash (u256)
     */
    @method()
    @returns({ name: 'collectionIdHash', type: ABIDataTypes.UINT256 })
    public getCollectionId(_calldata: Calldata): BytesWriter {
        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(this._collectionIdHash.value);
        return writer;
    }

    // ─── Private helpers ──────────────────────────────────────────────────────

    /**
     * Builds the attestation hash that the oracle must sign.
     *
     * Layout (all big-endian):
     *   contractAddress (32) | inscriptionId_len (4) | inscriptionId_bytes (n)
     *   | burner (32) | deadline (8) | nonce (32) | collectionIdHash (32)
     *
     * This layout must match the oracle plugin's `buildAttestationHash` exactly.
     */
    private buildAttestationHash(
        inscriptionId: string,
        burner: Address,
        deadline: u64,
        nonce: u256,
        collectionIdHash: u256,
    ): Uint8Array {
        const inscBytes: Uint8Array = Uint8Array.wrap(String.UTF8.encode(inscriptionId));
        const msgLen: i32 = 32 + 4 + inscBytes.length + 32 + 8 + 32 + 32;
        const msg: BytesWriter = new BytesWriter(msgLen);

        msg.writeAddress(Blockchain.contract.address);
        msg.writeU32(u32(inscBytes.length));
        msg.writeBytes(inscBytes);
        msg.writeAddress(burner);
        msg.writeU64(deadline);
        msg.writeU256(nonce);
        msg.writeU256(collectionIdHash);

        return sha256(msg.getBuffer());
    }

    /**
     * FNV-1a u64 hash of a string, returned as u256.
     * Used as a storage key for inscription IDs.
     */
    private hashString(s: string): u256 {
        const bytes: Uint8Array = Uint8Array.wrap(String.UTF8.encode(s));
        let h: u64 = 14695981039346656037;
        for (let i: i32 = 0; i < bytes.length; i++) {
            h ^= u64(bytes[i]);
            h = (h * 1099511628211) & 0xffffffffffffffff;
        }
        return u256.fromU64(h);
    }

    /**
     * FNV-1a u64 hash of an address's hex string, returned as u256.
     * Used to store and compare burner addresses without direct address iteration.
     */
    private hashAddress(addr: Address): u256 {
        const bytes: Uint8Array = Uint8Array.wrap(String.UTF8.encode(addr.toHex()));
        let h: u64 = 14695981039346656037;
        for (let i: i32 = 0; i < bytes.length; i++) {
            h ^= u64(bytes[i]);
            h = (h * 1099511628211) & 0xffffffffffffffff;
        }
        return u256.fromU64(h);
    }
}
