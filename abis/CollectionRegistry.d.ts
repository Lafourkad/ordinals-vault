import { Address, AddressMap, ExtendedAddressMap, SchnorrSignature } from '@btc-vision/transaction';
import { CallResult, OPNetEvent, IOP_NETContract } from 'opnet';

// ------------------------------------------------------------------
// Event Definitions
// ------------------------------------------------------------------

// ------------------------------------------------------------------
// Call Results
// ------------------------------------------------------------------

/**
 * @description Represents the result of the registerCollection function call.
 */
export type RegisterCollection = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the updateCollection function call.
 */
export type UpdateCollection = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getVault function call.
 */
export type GetVault = CallResult<
    {
        vaultAddress: Address;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getCollectionCount function call.
 */
export type GetCollectionCount = CallResult<
    {
        count: bigint;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getCollectionAtIndex function call.
 */
export type GetCollectionAtIndex = CallResult<
    {
        collectionIdHash: bigint;
    },
    OPNetEvent<never>[]
>;

// ------------------------------------------------------------------
// ICollectionRegistry
// ------------------------------------------------------------------
export interface ICollectionRegistry extends IOP_NETContract {
    registerCollection(collectionIdHash: bigint, vaultAddress: Address): Promise<RegisterCollection>;
    updateCollection(collectionIdHash: bigint, newVaultAddress: Address): Promise<UpdateCollection>;
    getVault(collectionIdHash: bigint): Promise<GetVault>;
    getCollectionCount(): Promise<GetCollectionCount>;
    getCollectionAtIndex(index: bigint): Promise<GetCollectionAtIndex>;
}
