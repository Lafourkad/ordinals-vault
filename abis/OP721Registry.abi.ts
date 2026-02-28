import { ABIDataTypes, BitcoinAbiTypes, OP_NET_ABI } from 'opnet';

export const OP721RegistryEvents = [];

export const OP721RegistryAbi = [
    {
        name: 'register',
        inputs: [{ name: 'collectionAddress', type: ABIDataTypes.ADDRESS }],
        outputs: [{ name: 'index', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getCount',
        inputs: [],
        outputs: [{ name: 'count', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getCollectionAt',
        inputs: [{ name: 'index', type: ABIDataTypes.UINT256 }],
        outputs: [{ name: 'collectionAddress', type: ABIDataTypes.ADDRESS }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'isRegistered',
        inputs: [{ name: 'collectionAddress', type: ABIDataTypes.ADDRESS }],
        outputs: [{ name: 'registered', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getRegistrant',
        inputs: [{ name: 'collectionAddress', type: ABIDataTypes.ADDRESS }],
        outputs: [{ name: 'registrant', type: ABIDataTypes.ADDRESS }],
        type: BitcoinAbiTypes.Function,
    },
    ...OP721RegistryEvents,
    ...OP_NET_ABI,
];

export default OP721RegistryAbi;
