import { ABIDataTypes, BitcoinAbiTypes, OP_NET_ABI } from 'opnet';

export const CollectionRegistryEvents = [];

export const CollectionRegistryAbi = [
    {
        name: 'registerCollection',
        inputs: [
            { name: 'collectionIdHash', type: ABIDataTypes.UINT256 },
            { name: 'vaultAddress', type: ABIDataTypes.ADDRESS },
        ],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'updateCollection',
        inputs: [
            { name: 'collectionIdHash', type: ABIDataTypes.UINT256 },
            { name: 'newVaultAddress', type: ABIDataTypes.ADDRESS },
        ],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getVault',
        inputs: [{ name: 'collectionIdHash', type: ABIDataTypes.UINT256 }],
        outputs: [{ name: 'vaultAddress', type: ABIDataTypes.ADDRESS }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getCollectionCount',
        inputs: [],
        outputs: [{ name: 'count', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getCollectionAtIndex',
        inputs: [{ name: 'index', type: ABIDataTypes.UINT256 }],
        outputs: [{ name: 'collectionIdHash', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    ...CollectionRegistryEvents,
    ...OP_NET_ABI,
];

export default CollectionRegistryAbi;
