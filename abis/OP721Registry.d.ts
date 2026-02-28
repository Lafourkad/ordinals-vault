import { Address, AddressMap, ExtendedAddressMap, SchnorrSignature } from '@btc-vision/transaction';
import { CallResult, OPNetEvent, IOP_NETContract } from 'opnet';

// ------------------------------------------------------------------
// Event Definitions
// ------------------------------------------------------------------

// ------------------------------------------------------------------
// Call Results
// ------------------------------------------------------------------

/**
 * @description Represents the result of the register function call.
 */
export type Register = CallResult<
    {
        index: bigint;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getCount function call.
 */
export type GetCount = CallResult<
    {
        count: bigint;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getCollectionAt function call.
 */
export type GetCollectionAt = CallResult<
    {
        collectionAddress: Address;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the isRegistered function call.
 */
export type IsRegistered = CallResult<
    {
        registered: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getRegistrant function call.
 */
export type GetRegistrant = CallResult<
    {
        registrant: Address;
    },
    OPNetEvent<never>[]
>;

// ------------------------------------------------------------------
// IOP721Registry
// ------------------------------------------------------------------
export interface IOP721Registry extends IOP_NETContract {
    register(collectionAddress: Address): Promise<Register>;
    getCount(): Promise<GetCount>;
    getCollectionAt(index: bigint): Promise<GetCollectionAt>;
    isRegistered(collectionAddress: Address): Promise<IsRegistered>;
    getRegistrant(collectionAddress: Address): Promise<GetRegistrant>;
}
