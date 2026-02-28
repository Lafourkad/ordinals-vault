import { u256 } from '@btc-vision/as-bignum/assembly';
import {
    Address,
    Blockchain,
    BytesWriter,
    Calldata,
    OP721,
    OP721InitParameters,
    Revert,
    SafeMath,
    StoredMapU256,
    StoredString,
} from '@btc-vision/btc-runtime/runtime';

const burnAddressPointer: u16 = Blockchain.nextPointer;
const verifiedBurnsPointer: u16 = Blockchain.nextPointer;
const burnBlockHeightsPointer: u16 = Blockchain.nextPointer;
const mintedInscriptionsPointer: u16 = Blockchain.nextPointer;

/**
 * OrdinalsVault — Generic OP721 contract for bridging Bitcoin Ordinals to OPNet.
 *
 * Flow:
 * 1. User burns their Ordinal by sending it to `burnAddress` on Bitcoin.
 * 2. The deployer-controlled oracle (OPNet plugin) detects the burn, identifies
 *    the inscription via the Ordinals indexer, and calls `recordBurn()`.
 * 3. After at least 1 block confirmation, the original burner calls `mint()`.
 * 4. The contract mints an OP721 token with the inscription ID stored as tokenURI.
 *
 * Any Ordinals collection can deploy this contract with their own parameters.
 * The deployer acts as the oracle and should run the companion OPNet plugin.
 */
@final
export class OrdinalsVault extends OP721 {
    private readonly _burnAddress: StoredString;

    /** inscriptionHash → FNV-64 hash of burner address hex (0 = not recorded) */
    private readonly _verifiedBurns: StoredMapU256;

    /** inscriptionHash → block number when burn was recorded (0 = not recorded) */
    private readonly _burnBlockHeights: StoredMapU256;

    /** inscriptionHash → tokenId + 1 (0 = not minted, prevents double-mint) */
    private readonly _mintedInscriptions: StoredMapU256;

    public constructor() {
        super();
        this._burnAddress = new StoredString(burnAddressPointer);
        this._verifiedBurns = new StoredMapU256(verifiedBurnsPointer);
        this._burnBlockHeights = new StoredMapU256(burnBlockHeightsPointer);
        this._mintedInscriptions = new StoredMapU256(mintedInscriptionsPointer);
    }

    /**
     * One-time initialization. Called once at deployment.
     *
     * Calldata: name (string), symbol (string), maxSupply (u256), burnAddress (string)
     */
    public override onDeployment(calldata: Calldata): void {
        const name: string = calldata.readStringWithLength();
        const symbol: string = calldata.readStringWithLength();
        const maxSupply: u256 = calldata.readU256();
        const burnAddress: string = calldata.readStringWithLength();

        this.instantiate(
            new OP721InitParameters(
                name,
                symbol,
                '',
                maxSupply,
            ),
        );

        this._burnAddress.value = burnAddress;
    }

    /**
     * Records a verified Ordinals burn. Only callable by the contract deployer (oracle).
     *
     * Called by the OPNet plugin after:
     * 1. Detecting a TX output to burnAddress on Bitcoin.
     * 2. Confirming via Ordinals indexer which inscription was in the burned UTXO.
     *
     * @param calldata - inscriptionId (string), burner (address)
     * @returns success (bool)
     */
    @method(
        { name: 'inscriptionId', type: ABIDataTypes.STRING },
        { name: 'burner', type: ABIDataTypes.ADDRESS },
    )
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    public recordBurn(calldata: Calldata): BytesWriter {
        this.onlyDeployer(Blockchain.tx.sender);

        const inscriptionId: string = calldata.readStringWithLength();
        const burner: Address = calldata.readAddress();

        const key: u256 = this.hashString(inscriptionId);

        if (!u256.eq(this._verifiedBurns.get(key), u256.Zero)) {
            throw new Revert('OrdinalsVault: burn already recorded');
        }

        if (!u256.eq(this._mintedInscriptions.get(key), u256.Zero)) {
            throw new Revert('OrdinalsVault: inscription already minted');
        }

        this._verifiedBurns.set(key, this.hashAddress(burner));
        this._burnBlockHeights.set(key, u256.fromU64(u64(Blockchain.block.number)));

        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    /**
     * Mints an OP721 token for a verified Ordinals burn.
     *
     * Requirements:
     * - Burn must have been recorded by the oracle via `recordBurn`.
     * - Caller must be the original burner.
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
            throw new Revert('OrdinalsVault: burn not verified by oracle');
        }

        if (!u256.eq(storedBurnerHash, this.hashAddress(caller))) {
            throw new Revert('OrdinalsVault: caller is not the original burner');
        }

        const burnBlock: u256 = this._burnBlockHeights.get(key);
        const currentBlock: u256 = u256.fromU64(u64(Blockchain.block.number));
        if (!u256.gt(currentBlock, burnBlock)) {
            throw new Revert('OrdinalsVault: must wait 1 block confirmation after burn');
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
     * Returns the burn status of an inscription.
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
     * Derives a deterministic u256 storage key from an inscription ID string.
     * Uses FNV-1a hash over the UTF-8 bytes.
     *
     * Bitcoin inscription IDs (`<64-char txid>i<index>`) provide sufficient
     * entropy for collision resistance in this use case.
     */
    private hashString(s: string): u256 {
        const encoded: ArrayBuffer = String.UTF8.encode(s);
        const bytes: Uint8Array = Uint8Array.wrap(encoded);
        let h: u64 = 14695981039346656037;
        for (let i: i32 = 0; i < bytes.length; i++) {
            h ^= u64(bytes[i]);
            h = (h * 1099511628211) & 0xffffffffffffffff;
        }
        return u256.fromU64(h);
    }

    /**
     * Derives a deterministic u256 identifier from an Address.
     * Uses FNV-1a over the 64-char hex representation of the address bytes.
     * Each OPNet address is 32 bytes (SHA256 of ML-DSA pubkey), giving 256 bits
     * of entropy — collision probability is negligible.
     */
    private hashAddress(addr: Address): u256 {
        const hex: string = addr.toHex();
        const encoded: ArrayBuffer = String.UTF8.encode(hex);
        const bytes: Uint8Array = Uint8Array.wrap(encoded);
        let h: u64 = 14695981039346656037;
        for (let i: i32 = 0; i < bytes.length; i++) {
            h ^= u64(bytes[i]);
            h = (h * 1099511628211) & 0xffffffffffffffff;
        }
        return u256.fromU64(h);
    }
}
