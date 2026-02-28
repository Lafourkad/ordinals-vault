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
    StoredU256,
} from '@btc-vision/btc-runtime/runtime';
import { sha256 } from '@btc-vision/btc-runtime/runtime/env/global';

const collectionCountPointer: u16 = Blockchain.nextPointer;
const collectionVaultsPointer: u16 = Blockchain.nextPointer;
const collectionIndexPointer: u16 = Blockchain.nextPointer;

/**
 * CollectionRegistry — On-chain directory mapping collection IDs to OrdinalsVault addresses.
 *
 * Each collection is identified by sha256(collectionSlug) stored as u256.
 * The registry stores the OPNet address of the corresponding OrdinalsVault contract.
 *
 * Registration is deployer-only. Anyone can read.
 *
 * This contract does NOT deploy vaults — vaults are deployed off-chain via script,
 * then registered here so the frontend can discover them.
 */
@final
export class CollectionRegistry extends OP_NET {
    /** Total number of registered collections */
    private readonly _collectionCount: StoredU256;

    /** collectionIdHash (u256) → vault contract address packed as u256 */
    private readonly _collectionVaults: StoredMapU256;

    /** sequential index (u256) → collectionIdHash for enumeration */
    private readonly _collectionIndex: StoredMapU256;

    public constructor() {
        super();
        this._collectionCount = new StoredU256(collectionCountPointer, EMPTY_POINTER);
        this._collectionVaults = new StoredMapU256(collectionVaultsPointer);
        this._collectionIndex = new StoredMapU256(collectionIndexPointer);
    }

    public override onDeployment(_calldata: Calldata): void {
        // No initialization needed — count starts at 0
    }

    /**
     * Register a vault for a collection. Deployer only.
     *
     * @param calldata - collectionIdHash (u256 = sha256 of collection slug),
     *                   vaultAddress (address)
     * @returns success (bool)
     */
    @method(
        { name: 'collectionIdHash', type: ABIDataTypes.UINT256 },
        { name: 'vaultAddress', type: ABIDataTypes.ADDRESS },
    )
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    public registerCollection(calldata: Calldata): BytesWriter {
        this.onlyDeployer(Blockchain.tx.sender);

        const collectionIdHash: u256 = calldata.readU256();
        const vaultAddress: Address = calldata.readAddress();

        // Check not already registered
        const existing: u256 = this._collectionVaults.get(collectionIdHash);
        if (!u256.eq(existing, u256.Zero)) {
            throw new Revert('CollectionRegistry: collection already registered');
        }

        // Store vault address as u256 (Address is a Uint8Array of 32 bytes)
        const addrU256: u256 = u256.fromUint8ArrayBE(vaultAddress);
        this._collectionVaults.set(collectionIdHash, addrU256);

        // Store in enumeration index
        const index: u256 = this._collectionCount.value;
        this._collectionIndex.set(index, collectionIdHash);
        this._collectionCount.value = u256.add(index, u256.One);

        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    /**
     * Update vault address for an existing collection. Deployer only.
     *
     * @param calldata - collectionIdHash (u256), newVaultAddress (address)
     * @returns success (bool)
     */
    @method(
        { name: 'collectionIdHash', type: ABIDataTypes.UINT256 },
        { name: 'newVaultAddress', type: ABIDataTypes.ADDRESS },
    )
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    public updateCollection(calldata: Calldata): BytesWriter {
        this.onlyDeployer(Blockchain.tx.sender);

        const collectionIdHash: u256 = calldata.readU256();
        const newVaultAddress: Address = calldata.readAddress();

        const existing: u256 = this._collectionVaults.get(collectionIdHash);
        if (u256.eq(existing, u256.Zero)) {
            throw new Revert('CollectionRegistry: collection not registered');
        }

        const addrU256: u256 = u256.fromUint8ArrayBE(newVaultAddress);
        this._collectionVaults.set(collectionIdHash, addrU256);

        const writer: BytesWriter = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    /**
     * Look up vault address for a collection.
     *
     * @param calldata - collectionIdHash (u256)
     * @returns vaultAddress (address)
     */
    @method({ name: 'collectionIdHash', type: ABIDataTypes.UINT256 })
    @returns({ name: 'vaultAddress', type: ABIDataTypes.ADDRESS })
    public getVault(calldata: Calldata): BytesWriter {
        const collectionIdHash: u256 = calldata.readU256();

        const addrU256: u256 = this._collectionVaults.get(collectionIdHash);
        if (u256.eq(addrU256, u256.Zero)) {
            throw new Revert('CollectionRegistry: collection not found');
        }

        // Convert u256 back to Address (32 bytes big-endian)
        const addrArray: u8[] = addrU256.toBytes(true);
        const vaultAddress: Address = new Address(addrArray);

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeAddress(vaultAddress);
        return writer;
    }

    /**
     * Returns total number of registered collections.
     *
     * @returns count (u256)
     */
    @method()
    @returns({ name: 'count', type: ABIDataTypes.UINT256 })
    public getCollectionCount(_calldata: Calldata): BytesWriter {
        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(this._collectionCount.value);
        return writer;
    }

    /**
     * Get collection ID hash by sequential index (for enumeration).
     *
     * @param calldata - index (u256, 0-based)
     * @returns collectionIdHash (u256)
     */
    @method({ name: 'index', type: ABIDataTypes.UINT256 })
    @returns({ name: 'collectionIdHash', type: ABIDataTypes.UINT256 })
    public getCollectionAtIndex(calldata: Calldata): BytesWriter {
        const index: u256 = calldata.readU256();

        if (u256.ge(index, this._collectionCount.value)) {
            throw new Revert('CollectionRegistry: index out of bounds');
        }

        const collectionIdHash: u256 = this._collectionIndex.get(index);

        const writer: BytesWriter = new BytesWriter(32);
        writer.writeU256(collectionIdHash);
        return writer;
    }
}
