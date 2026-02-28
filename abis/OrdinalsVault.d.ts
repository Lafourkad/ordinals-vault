import { Address, AddressMap, ExtendedAddressMap, SchnorrSignature } from '@btc-vision/transaction';
import { CallResult, OPNetEvent, IOP_NETContract } from 'opnet';

// ------------------------------------------------------------------
// Event Definitions
// ------------------------------------------------------------------
export type TransferredEvent = {
    readonly operator: Address;
    readonly from: Address;
    readonly to: Address;
    readonly amount: bigint;
};

// ------------------------------------------------------------------
// Call Results
// ------------------------------------------------------------------

/**
 * @description Represents the result of the recordBurnWithAttestation function call.
 */
export type RecordBurnWithAttestation = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the mint function call.
 */
export type Mint = CallResult<
    {
        tokenId: bigint;
    },
    OPNetEvent<TransferredEvent>[]
>;

/**
 * @description Represents the result of the setOracle function call.
 */
export type SetOracle = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getBurnStatus function call.
 */
export type GetBurnStatus = CallResult<
    {
        verified: boolean;
        minted: boolean;
    },
    OPNetEvent<never>[]
>;

/**
 * @description Represents the result of the getBurnAddress function call.
 */
export type GetBurnAddress = CallResult<
    {
        burnAddress: string;
    },
    OPNetEvent<never>[]
>;

// ------------------------------------------------------------------
// IOrdinalsVault
// ------------------------------------------------------------------
export interface IOrdinalsVault extends IOP_NETContract {
    recordBurnWithAttestation(
        inscriptionId: string,
        burner: Address,
        deadline: bigint,
        nonce: bigint,
        oraclePublicKey: Uint8Array,
        oracleSig: Uint8Array,
    ): Promise<RecordBurnWithAttestation>;
    mint(inscriptionId: string): Promise<Mint>;
    setOracle(newKeyHash: bigint): Promise<SetOracle>;
    getBurnStatus(inscriptionId: string): Promise<GetBurnStatus>;
    getBurnAddress(): Promise<GetBurnAddress>;
}
