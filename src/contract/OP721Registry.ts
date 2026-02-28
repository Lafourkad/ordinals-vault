import { u256 } from '@btc-vision/as-bignum/assembly';
import {
    Address,
    Blockchain,
    BytesWriter,
    Calldata,
    EMPTY_POINTER,
    OP_NET,
    Revert,
    SafeMath,
    StoredMapU256,
    StoredString,
    StoredU256,
} from '@btc-vision/btc-runtime/runtime';
import { sha256 } from '@btc-vision/btc-runtime/runtime/env/global';

const collectionCountPointer: u16 = Blockchain.nextPointer;
const collectionByIndexPointer: u16 = Blockchain.nextPointer;
const collectionRegisteredPointer: u16 = Blockchain.nextPointer;
const collectionDeployerPointer: u16 = Blockchain.nextPointer;

/**
 * OP721Registry — Permissionless on-chain directory of all OP721 collections on OPNet.
 *
 * Anyone can register their OP721 contract. The registry stores the contract address
 * and the registrant (tx.sender). Registration is one-time per address — no duplicates.
 *
 * Use cases:
 *   - Wallets: discover all NFT collections
 *   - Marketplaces: list collections without manual curation
 *   - Explorers: enumerate the NFT ecosystem
 *   - Frontends: build collection browsers
 *
 * The registry does NOT verify that the registered address is actually an OP721 contract.
 * Verification is the responsibility of consumers (call name()/symbol()/totalSupply()
 * on the address and check for reverts).
 */
@final
export class OP721Registry extends OP_NET {
    /** Total number of registered collections */
    private readonly _count: StoredU256;

    /** index (u256) → contract address packed as u256 (for enumeration) */
    private readonly _byIndex: StoredMapU256;

    /** contract address hash (u256) → u256.One if registered (dedup guard) */
    private readonly _registered: StoredMapU256;

    /** contract address hash (u256) → registrant address packed as u256 */
    private readonly _deployer: StoredMapU256;

    public constructor() {
        super();
        this._count = new StoredU256(collectionCountPointer, EMPTY_POINTER);
        this._byIndex = new StoredMapU256(collectionByIndexPointer);
        this._registered = new StoredMapU256(collectionRegisteredPointer);
        this._deployer = new StoredMapU256(collectionDeployerPointer);
    }

    public override onDeployment(_calldata: Calldata): void {
        // Nothing to initialize — count starts at zero
    }

    // ─── Write methods ───────────────────────────────────────────────────────

    /**
     * Register an OP721 collection. Permissionless — anyone can register any address.
     * Reverts if already registered.
     *
     * @param calldata - collectionAddress (Address, 32 bytes)
     * @returns index (u256) — the sequential index assigned to this collection
     */
    @method({ name: 'collectionAddress', type: ABIDataTypes.ADDRESS })
    @returns({ name: 'index', type: ABIDataTypes.UINT256 })
    public register(calldata: Calldata): BytesWriter {
        const collectionAddress: Address = calldata.readAddress();

        // Dedup: hash the address to use as map key
        const addrKey: u256 = this.hashAddress(collectionAddress);

        if (!u256.eq(this._registered.get(addrKey), u256.Zero)) {
            throw new Revert('OP721Registry: already registered');
        }

        // Store
        const index: u256 = this._count.value;
        const addrU256: u256 = u256.fromUint8ArrayBE(collectionAddress);

        this._byIndex.set(index, addrU256);
        this._registered.set(addrKey, u256.One);

        // Record who registered it (tx.sender)
        const senderU256: u256 = u256.fromUint8ArrayBE(Blockchain.tx.sender);
        this._deployer.set(addrKey, senderU256);

        this._count.value = SafeMath.add(index, u256.One);

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(index);
        return writer;
    }

    // ─── View methods ────────────────────────────────────────────────────────

    /**
     * Total number of registered collections.
     */
    @method()
    @returns({ name: 'count', type: ABIDataTypes.UINT256 })
    public getCount(_calldata: Calldata): BytesWriter {
        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(this._count.value);
        return writer;
    }

    /**
     * Get collection address by sequential index (0-based).
     *
     * @param calldata - index (u256)
     * @returns collectionAddress (Address)
     */
    @method({ name: 'index', type: ABIDataTypes.UINT256 })
    @returns({ name: 'collectionAddress', type: ABIDataTypes.ADDRESS })
    public getCollectionAt(calldata: Calldata): BytesWriter {
        const index: u256 = calldata.readU256();

        if (u256.ge(index, this._count.value)) {
            throw new Revert('OP721Registry: index out of bounds');
        }

        const addrU256: u256 = this._byIndex.get(index);
        const addrArray: u8[] = addrU256.toBytes(true);
        const addr: Address = new Address(addrArray);

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeAddress(addr);
        return writer;
    }

    /**
     * Check if a collection address is registered.
     *
     * @param calldata - collectionAddress (Address)
     * @returns registered (bool)
     */
    @method({ name: 'collectionAddress', type: ABIDataTypes.ADDRESS })
    @returns({ name: 'registered', type: ABIDataTypes.BOOL })
    public isRegistered(calldata: Calldata): BytesWriter {
        const collectionAddress: Address = calldata.readAddress();
        const addrKey: u256 = this.hashAddress(collectionAddress);
        const isReg: bool = !u256.eq(this._registered.get(addrKey), u256.Zero);

        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(isReg);
        return writer;
    }

    /**
     * Get the address that registered a collection.
     *
     * @param calldata - collectionAddress (Address)
     * @returns registrant (Address)
     */
    @method({ name: 'collectionAddress', type: ABIDataTypes.ADDRESS })
    @returns({ name: 'registrant', type: ABIDataTypes.ADDRESS })
    public getRegistrant(calldata: Calldata): BytesWriter {
        const collectionAddress: Address = calldata.readAddress();
        const addrKey: u256 = this.hashAddress(collectionAddress);

        const regU256: u256 = this._deployer.get(addrKey);
        if (u256.eq(regU256, u256.Zero)) {
            throw new Revert('OP721Registry: not registered');
        }

        const regArray: u8[] = regU256.toBytes(true);
        const registrant: Address = new Address(regArray);

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeAddress(registrant);
        return writer;
    }

    // ─── Private ─────────────────────────────────────────────────────────────

    /** Hash an address to u256 for use as StoredMapU256 key */
    private hashAddress(addr: Address): u256 {
        const hashBytes: Uint8Array = sha256(addr);
        return u256.fromBytes(hashBytes, false);
    }
}
