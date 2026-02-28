# OrdinalsVault

An [OPNet](https://opnet.org) OP721 smart contract that bridges Bitcoin Ordinals inscriptions to on-chain tokens — trustlessly and without custody.

---

## Overview

OrdinalsVault lets users **burn** a Bitcoin Ordinal inscription and **mint** an OP721 token on OPNet in return. The bridge is secured by a gasless oracle: the oracle signs attestations off-chain (ML-DSA-44, post-quantum), users submit them and pay their own gas. The oracle never touches OPNet transactions.

```
Bitcoin                         OPNet
───────                         ─────
User burns inscription    →   Oracle detects burn
  (send to burnAddress)         (via local ord node)
  (OP_RETURN: OPNet addr)       signs attestation off-chain
                                      ↓
                          User fetches attestation (REST)
                          User calls recordBurnWithAttestation()
                          User calls mint()
                                      ↓
                             OP721 token minted to user
```

---

## Bridge Flow

### 1. Burn (Bitcoin)

Send a Bitcoin transaction:

```
vin[0]:   UTXO holding the inscription
vout[0]:  <burnAddress>                        ← inscription goes here
vout[1]:  OP_RETURN <opnet_address_32_bytes>   ← address that will receive the OP721
vout[2]:  change (optional)
```

### 2. Attest (Oracle — gasless)

The oracle plugin detects the burn, queries the local `ord` node to confirm the inscription, and signs an ML-DSA-44 attestation off-chain. Available at:

```
GET /plugins/ordinals-oracle/attestation/:txid
→ { inscriptionId, burner, deadline, nonce, oraclePublicKey, oracleSig }
```

See [ordinals-vault-oracle](https://github.com/Lafourkad/ordinals-vault-oracle).

### 3. Claim + Mint (User — pays own gas)

```typescript
await contract.recordBurnWithAttestation(
    inscriptionId,
    burner,
    deadline,        // OPNet block height
    nonce,
    oraclePublicKey, // 1312-byte ML-DSA-44 public key
    oracleSig        // 2420-byte ML-DSA-44 signature
);
await contract.mint(inscriptionId);
```

---

## Contract Methods

| Method | Access | Description |
|--------|--------|-------------|
| `recordBurnWithAttestation(inscriptionId, burner, deadline, nonce, oraclePublicKey, oracleSig)` | Anyone | Record a verified burn using an oracle attestation |
| `mint(inscriptionId)` | Burner only | Mint the OP721 token (must wait 1 block after attestation) |
| `getBurnStatus(inscriptionId)` | Anyone | Returns `(verified, minted)` |
| `getBurnAddress()` | Anyone | Returns the Bitcoin burn address |
| `setOracle(newKeyHash)` | Deployer only | Rotate the oracle key (newKeyHash = sha256 of new ML-DSA-44 public key) |

---

## Signature Scheme

Oracle attestations use **ML-DSA-44** (FIPS 204, post-quantum):

- Oracle identity: `sha256(mldsaPublicKey)` — stored in `_oracleKeyHash` (32 bytes)
- Users pass the full 1312-byte public key in calldata
- Contract verifies `sha256(oraclePublicKey) == _oracleKeyHash`, then runs `Blockchain.verifyMLDSASignature`
- **Anti-replay**: each attestation carries a unique nonce, consumed on first use

Attestation hash (contract ↔ oracle must match exactly):
```
sha256(
  contractAddress (32B)
  | inscriptionId_len (4B, uint32 BE)
  | inscriptionId (UTF-8)
  | burner (32B)
  | deadline (8B, uint64 BE — OPNet block height)
  | nonce (32B)
)
```

---

## Deployment

### Prerequisites

```bash
npm install
```

### Build

```bash
npm run build
# → build/OrdinalsVault.wasm
```

### Deploy

1. Generate the oracle ML-DSA-44 key and compute its hash (see [oracle README](https://github.com/Lafourkad/ordinals-vault-oracle#setup-registering-the-oracle-key)):

```bash
node -e "
import('@btc-vision/post-quantum/ml-dsa.js').then(async ({ ml_dsa44 }) => {
  const { createHash } = await import('crypto');
  const { publicKey } = ml_dsa44.keygen();
  const hash = createHash('sha256').update(publicKey).digest('hex');
  console.log('oracleKeyHash:', hash);
});
"
```

2. Deploy the contract with calldata:

| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Collection name |
| `symbol` | string | Collection symbol |
| `maxSupply` | uint256 | Maximum number of tokens |
| `burnAddress` | string | Bitcoin P2TR address where inscriptions are sent |
| `oracleKeyHash` | uint256 | sha256(oracleMLDSAPublicKey) as big-endian uint256 |

---

## Project Structure

```
ordinals-vault/
├── src/
│   ├── index.ts                 # Contract entry point (factory + abort)
│   └── contract/
│       └── OrdinalsVault.ts     # Main contract (OP721)
├── abis/
│   ├── OrdinalsVault.abi.json   # Auto-generated ABI
│   ├── OrdinalsVault.abi.ts     # TypeScript ABI (for frontend)
│   └── OrdinalsVault.d.ts       # Type definitions
├── build/
│   └── OrdinalsVault.wasm       # Compiled contract
├── asconfig.json                # AssemblyScript config
└── package.json
```

---

## Related

- [ordinals-vault-oracle](https://github.com/Lafourkad/ordinals-vault-oracle) — Gasless oracle plugin (ML-DSA-44, OPNet node plugin)
- [ordinals-renderer](https://github.com/Lafourkad/ordinals-renderer) — Inscription content renderer plugin
- [OPNet Documentation](https://docs.opnet.org)
