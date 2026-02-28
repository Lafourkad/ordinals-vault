import { ABIDataTypes, BitcoinAbiTypes, OP_NET_ABI } from 'opnet';

export const OrdinalsVaultEvents = [
    {
        name: 'Transferred',
        values: [
            { name: 'operator', type: ABIDataTypes.ADDRESS },
            { name: 'from', type: ABIDataTypes.ADDRESS },
            { name: 'to', type: ABIDataTypes.ADDRESS },
            { name: 'amount', type: ABIDataTypes.UINT256 },
        ],
        type: BitcoinAbiTypes.Event,
    },
];

export const OrdinalsVaultAbi = [
    {
        name: 'recordBurn',
        inputs: [
            { name: 'inscriptionId', type: ABIDataTypes.STRING },
            { name: 'burner', type: ABIDataTypes.ADDRESS },
        ],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'mint',
        inputs: [{ name: 'inscriptionId', type: ABIDataTypes.STRING }],
        outputs: [{ name: 'tokenId', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getBurnStatus',
        inputs: [{ name: 'inscriptionId', type: ABIDataTypes.STRING }],
        outputs: [
            { name: 'verified', type: ABIDataTypes.BOOL },
            { name: 'minted', type: ABIDataTypes.BOOL },
        ],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getBurnAddress',
        inputs: [],
        outputs: [{ name: 'burnAddress', type: ABIDataTypes.STRING }],
        type: BitcoinAbiTypes.Function,
    },
    ...OrdinalsVaultEvents,
    ...OP_NET_ABI,
];

export default OrdinalsVaultAbi;
