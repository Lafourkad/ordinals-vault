# OIP-721: Non-Fungible Token Standard for OPNet

```
OIP:      0721
Title:    Non-Fungible Token Standard
Author:   OPNet Contributors
Status:   Draft
Type:     Standards Track
Category: Token
Created:  2025-08-22
Revised:  2026-02-28
Requires: OPNet Core Protocol, btc-runtime ≥ 1.0
```

---

## Abstract

OIP-721 defines a standard interface for non-fungible tokens (NFTs) on OPNet. Unlike ERC-721 (which it is often compared to), OIP-721 is designed from scratch for OPNet's WASM runtime, AssemblyScript contracts, Bitcoin-native addresses, and post-quantum cryptography. It is not a port — it is a different standard that happens to solve the same problem.

This document specifies:
- Required and optional methods for OP721-compliant contracts
- Storage layout using OPNet's pointer-based system
- Token lifecycle (mint, transfer, burn)
- Approval and operator mechanics
- Gasless signature-based operations (Schnorr + ML-DSA)
- Enumeration (built-in, not an extension)
- Collection metadata
- Security invariants

---

## 1. Motivation

NFTs need a standard so wallets, marketplaces, and indexers can interact with any collection without custom integration. OPNet's runtime differs from the EVM in fundamental ways that make a direct port of ERC-721 impractical:

| Concern | EVM / ERC-721 | OPNet / OIP-721 |
|---------|---------------|-----------------|
| Language | Solidity | AssemblyScript |
| Execution | EVM bytecode | WASM |
| Constructor | Runs once at deploy | Runs on **every** call — use `onDeployment` for init |
| Addresses | 20 bytes (keccak160) | 32 bytes (tweaked public key) |
| Integer arithmetic | Native overflow wrapping | `u256` via `@btc-vision/as-bignum`, **must** use `SafeMath` |
| Hash function | keccak256 | SHA-256 |
| Storage model | Implicit slot assignment | Explicit pointer allocation via `Blockchain.nextPointer` |
| Loops | Gas-metered, any pattern | `while` is **forbidden** — bounded `for` only |
| Signature scheme | ECDSA (secp256k1) | Schnorr (BIP-340) + ML-DSA-44 (FIPS 204, post-quantum) |
| Enumeration | Optional extension (ERC-721 Enumerable) | Built-in, mandatory |
| Floating point | Not applicable | **Forbidden** — non-deterministic in WASM |

These differences are not cosmetic. A developer who treats OIP-721 as "ERC-721 in TypeScript" will write broken contracts.

---

## 2. Terminology

- **Token**: A unique, non-fungible item identified by a `u256` token ID within a contract.
- **Collection**: The set of all tokens managed by a single OP721 contract instance.
- **Owner**: The address that currently holds a token.
- **Operator**: An address approved to manage **all** tokens of a given owner.
- **Approved address**: An address approved to manage a **single** token.
- **Deployer**: The address that deployed the contract. Has admin privileges via `onlyDeployer`.
- **Burn**: Permanent destruction of a token. The token ID can never be reused.

---

## 3. Contract Lifecycle

### 3.1 Deployment

```
User submits deployment TX with WASM bytecode + calldata
  → Runtime instantiates contract (constructor runs)
  → Runtime calls onDeployment(calldata) — ONCE, EVER
  → Contract calls this.instantiate(params) to set name, symbol, maxSupply, etc.
  → Contract is live
```

### 3.2 Every Subsequent Call

```
User submits interaction TX
  → Runtime instantiates contract (constructor runs AGAIN)
  → Runtime calls execute(selector, calldata)
  → Selector routes to the correct @method
  → Method reads/writes storage, emits events, returns BytesWriter
```

**Critical**: The constructor runs on every single interaction, not just deployment. Never put initialization logic in the constructor. The constructor must only call `super()` and initialize storage handle references (pointers to `StoredU256`, `StoredMapU256`, etc.).

### 3.3 Initialization Parameters

```typescript
class OP721InitParameters {
    name: string           // Collection name — cannot be empty
    symbol: string         // Collection symbol — cannot be empty
    baseURI: string        // Base URI for token metadata (can be empty, set later)
    maxSupply: u256        // Maximum tokens that can ever exist — must be > 0
    collectionBanner: string   // Optional — banner image URL
    collectionIcon: string     // Optional — icon image URL
    collectionWebsite: string  // Optional — project website
    collectionDescription: string  // Optional — description text
}
```

`instantiate()` can only be called once. All parameters except `baseURI` and collection metadata are immutable after initialization.

---

## 4. Required Interface

Every OIP-721 compliant contract **MUST** implement or inherit the following methods. Method selectors are derived from the function signature via `sha256(signature)[0..4]`.

### 4.1 Collection Info

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `name` | — | `string` | View |
| `symbol` | — | `string` | View |
| `totalSupply` | — | `u256` | View |
| `maxSupply` | — | `u256` | View |

`totalSupply` is the number of tokens currently in existence (minted minus burned). It **MUST** never exceed `maxSupply`.

### 4.2 Ownership

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `balanceOf` | `owner: Address` | `u256` | View |
| `ownerOf` | `tokenId: u256` | `Address` | View |

- `balanceOf` **MUST** revert for the zero address.
- `ownerOf` **MUST** revert if the token does not exist.

### 4.3 Transfers

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `safeTransfer` | `to: Address, tokenId: u256, data: bytes` | — | Write |
| `safeTransferFrom` | `from: Address, to: Address, tokenId: u256, data: bytes` | — | Write |
| `burn` | `tokenId: u256` | — | Write |

#### Transfer rules:
1. Caller **MUST** be the owner, an approved address, or an approved operator.
2. `from` **MUST** be the current owner (for `safeTransferFrom`).
3. `to` **MUST NOT** be the zero address.
4. The token **MUST** exist.
5. Ownership transfers atomically — balance updates, owner mapping, and enumeration updates happen in one transaction.
6. Any existing single-token approval **MUST** be cleared on transfer.
7. **MUST** emit `Transferred` event.

#### Safe transfer receiver callback:
If the recipient is a contract, `safeTransferFrom` **MUST** call `onOP721Received` on the recipient:

```typescript
function onOP721Received(
    operator: Address,   // Who initiated the transfer (tx.sender)
    from: Address,       // Previous owner
    tokenId: u256,       // The token
    data: Uint8Array     // Arbitrary data from the caller
): u32                   // Must return 0xd83e7dbc to accept
```

If the recipient returns any other value or reverts, the entire transfer **MUST** revert.

#### Burn rules:
1. Caller **MUST** be the owner, an approved address, or an approved operator.
2. The token **MUST** exist.
3. All approvals **MUST** be cleared.
4. Custom URI **MUST** be deleted.
5. `totalSupply` **MUST** decrement.
6. **MUST** emit `Transferred` with `to = Address.zero()`.
7. A burned token ID can **never** be reused.

### 4.4 Approvals

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `approve` | `operator: Address, tokenId: u256` | — | Write |
| `getApproved` | `tokenId: u256` | `Address` | View |
| `setApprovalForAll` | `operator: Address, approved: bool` | — | Write |
| `isApprovedForAll` | `owner: Address, operator: Address` | `bool` | View |

- `approve` **MUST** be called by the owner or an approved operator.
- `approve` **MUST** emit `Approved`.
- `setApprovalForAll` **MUST** emit `ApprovedForAll`.
- An operator approved via `setApprovalForAll` can manage **all** of the owner's tokens — present and future.

### 4.5 Metadata

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `tokenURI` | `tokenId: u256` | `string` | View |
| `setBaseURI` | `baseURI: string` | — | Write (deployer only) |
| `collectionInfo` | — | `icon, banner, description, website` | View |
| `metadata` | — | `name, symbol, icon, banner, description, website, totalSupply, domainSeparator` | View |
| `changeMetadata` | `icon, banner, description, website` | — | Write (deployer only) |

#### URI resolution:
1. If a custom URI has been set for the token (via `_setTokenURI`), return it.
2. Otherwise, return `baseURI + tokenId.toString()`.
3. URIs are capped at 1024 characters.
4. `tokenURI` **MUST** revert if the token does not exist.

### 4.6 Enumeration

| Method | Parameters | Returns | Mutability |
|--------|-----------|---------|------------|
| `tokenOfOwnerByIndex` | `owner: Address, index: u256` | `u256` | View |

Enumeration is **mandatory** in OIP-721 (not an optional extension). This method provides O(1) access to any token held by an address, indexed from 0 to `balanceOf(owner) - 1`.

The implementation uses a swap-last removal pattern for O(1) transfer/burn operations:

```
Owner's tokens: [A, B, C, D]  (indices 0, 1, 2, 3)

Remove B:
  1. Get last element (D)
  2. Overwrite B's position with D: [A, D, C, D]
  3. Remove last: [A, D, C]
  4. Update index: D is now at index 1

All operations are O(1). No shifting, no iteration.
```

---

## 5. Gasless Operations (Signature-Based)

OIP-721 supports gasless **approvals** via Schnorr signatures. A token owner signs an approval intent off-chain; any relayer can submit it on-chain, paying gas on the owner's behalf.

> **Note**: Gasless *transfers* (`transferBySignature`) are **not** part of the current standard. Only approval operations support signature-based execution. Gasless transfers may be added in a future OIP.

### 5.1 Signature Scheme

The current implementation uses **Schnorr signatures (BIP-340)** exclusively for gasless operations:

| Property | Value |
|----------|-------|
| Scheme | Schnorr (BIP-340) |
| Public key | 32 bytes (tweaked) |
| Signature | 64 bytes (exactly — other lengths are rejected) |
| Security | Classical |

The broader OPNet runtime supports ML-DSA-44 (post-quantum) via `Blockchain.verifyMLDSASignature`, but the OP721 base class gasless methods currently enforce 64-byte Schnorr signatures only. Contracts requiring post-quantum gasless operations must implement custom methods using `Blockchain.verifySignature(address, sig, hash, true)` with `forceMLDSA`.

### 5.2 Gasless Approval

```typescript
approveBySignature(
    owner: Address,         // Token owner (ExtendedAddress internally)
    spender: Address,       // Address to approve
    tokenId: u256,          // Token to approve for
    deadline: u64,          // Block height — expires after this
    signature: Uint8Array   // Schnorr signature, exactly 64 bytes
)

setApprovalForAllBySignature(
    owner: Address,
    operator: Address,
    approved: bool,
    deadline: u64,
    signature: Uint8Array   // Schnorr signature, exactly 64 bytes
)
```

Both methods use the same approval nonce counter, which increments after each successful verification.

### 5.3 Nonce Query

| Method | Returns |
|--------|---------|
| `getApproveNonce(owner: Address)` | `u256` — current approval nonce |

### 5.4 Domain Separator

```typescript
domainSeparator() → bytes32
```

Computed as:
```
sha256(
    "OP712Domain"
    | name                   // Collection name
    | "1"                    // Version
    | chainId                // OPNet chain identifier
    | protocolId             // OPNet protocol identifier
    | contractAddress        // 32-byte contract address
)
```

Prevents cross-chain and cross-contract signature replay.

---

## 6. Events

### 6.1 Transferred

Emitted on every ownership change (mint, transfer, burn).

```
Transferred(
    operator: Address,    // Who initiated (tx.sender)
    from: Address,        // Previous owner (zero for mint)
    to: Address,          // New owner (zero for burn)
    tokenId: u256         // The token
)
```

### 6.2 Approved

Emitted when a single-token approval is set or cleared.

```
Approved(
    owner: Address,       // Token owner
    approved: Address,    // Approved address (zero = cleared)
    tokenId: u256         // The token
)
```

### 6.3 ApprovedForAll

Emitted when an operator approval changes.

```
ApprovedForAll(
    owner: Address,
    operator: Address,
    approved: bool
)
```

### 6.4 URI

Emitted when a token URI or the base URI changes.

```
URI(
    value: string,        // The new URI
    tokenId: u256         // Token ID (zero for base URI change)
)
```

---

## 7. Storage Architecture

OIP-721 uses OPNet's pointer-based storage. Each storage variable occupies a unique `u16` pointer, allocated sequentially via `Blockchain.nextPointer`. Storage keys are derived as `SHA-256(pointer || subPointer)`.

### 7.1 Required Pointers

| Pointer | Variable | Type | Description |
|---------|----------|------|-------------|
| 0 | `_name` | `StoredString` | Collection name |
| 1 | `_symbol` | `StoredString` | Collection symbol |
| 2 | `_baseURI` | `StoredString` | Base metadata URI |
| 3 | `_totalSupply` | `StoredU256` | Current token count |
| 4 | `_maxSupply` | `StoredU256` | Maximum token count |
| 5 | `ownerOfMap` | `StoredMapU256` | tokenId → owner |
| 6 | `tokenApprovalMap` | `StoredMapU256` | tokenId → approved address |
| 7 | `operatorApprovalMap` | `MapOfMap<u256>` | owner → operator → bool |
| 8 | `balanceOfMap` | `AddressMemoryMap` | owner → balance count |
| 9 | `tokenURIMap` | `StoredMapU256` | tokenId → custom URI index |
| 10 | `_nextTokenId` | `StoredU256` | Next ID to mint (starts at 1) |
| 11 | `ownerTokensMap` | Per-owner `StoredU256Array` | owner → [tokenIds] |
| 12 | `tokenIndexMap` | `StoredMapU256` | tokenId → index in owner's array |
| 13 | `_initialized` | `StoredU256` | Deployment flag (0 or 1) |
| 14 | `tokenURICounter` | `StoredU256` | Counter for custom URI storage |
| 15 | `approveNonceMap` | `AddressMemoryMap` | owner → approval sig nonce |

Pointer numbers are illustrative — the actual values depend on allocation order via `Blockchain.nextPointer`. What matters is that each contract instance allocates them in a deterministic, fixed order.

### 7.2 Subcontracts extending OP721

Contracts that extend OP721 **MUST** allocate their custom pointers **after** calling `super()` in the constructor. The base class allocates pointers 0–15 (or equivalent). Subclass pointers start from 16+.

```typescript
@final
export class MyNFT extends OP721 {
    // These pointers are allocated AFTER base class pointers
    private myCustomPointer: u16 = Blockchain.nextPointer;
    private anotherPointer: u16 = Blockchain.nextPointer;

    public constructor() {
        super(); // Base class allocates its pointers here
        // Initialize custom storage handles
        this._myCustomValue = new StoredU256(this.myCustomPointer, EMPTY_POINTER);
    }
}
```

---

## 8. Internal (Protected) Methods

These methods are available to subclasses but **MUST NOT** be exposed as public calldata methods without access control.

| Method | Description | Side Effects |
|--------|-------------|-------------|
| `_mint(to, tokenId)` | Create a new token | Updates owner, balance, enumeration, totalSupply. Emits `Transferred`. Reverts if token exists or maxSupply reached. |
| `_burn(tokenId)` | Destroy a token | Clears owner, approvals, custom URI, enumeration. Decrements totalSupply. Emits `Transferred`. Token ID is permanently consumed. |
| `_transfer(from, to, tokenId, data)` | Move a token | Updates owner, balances, enumeration. Clears approval. Calls `onOP721Received` if recipient is a contract. Emits `Transferred`. |
| `_approve(operator, tokenId)` | Set single-token approval | Emits `Approved`. |
| `_setApprovalForAll(owner, operator, approved)` | Set operator approval | Emits `ApprovedForAll`. |
| `_setTokenURI(tokenId, uri)` | Set custom URI for a token | Must exist. Max 1024 chars. Emits `URI`. |
| `_setBaseURI(baseURI)` | Set base URI | Max 1024 chars. Emits `URI`. |
| `_exists(tokenId)` | Check if token exists | Returns `bool`. No side effects. |

---

## 9. Security Considerations

### 9.1 Reentrancy

OP721 inherits from `ReentrancyGuard`. All state-modifying methods follow check-effects-interactions:
1. Validate inputs and authorization
2. Update all state (ownership, balances, enumeration)
3. Make external calls (receiver callback) last

### 9.2 Integer Safety

All arithmetic on `u256` values **MUST** use `SafeMath`. AssemblyScript's native integer operations can silently overflow. There is no compiler-level overflow protection.

```typescript
// CORRECT
const newBalance = SafeMath.add(balance, u256.One);

// WRONG — silent overflow possible
const newBalance = balance + u256.One;
```

### 9.3 Constructor vs onDeployment

The constructor runs on every call. Placing initialization logic in the constructor will re-execute it on every interaction, potentially resetting state or wasting gas.

```typescript
// WRONG — runs every call
public constructor() {
    super();
    this._oracleKey.value = someKey; // This resets on every TX!
}

// CORRECT — runs once
public override onDeployment(calldata: Calldata): void {
    this._oracleKey.value = calldata.readU256();
}
```

### 9.4 Forbidden Patterns

| Pattern | Why |
|---------|-----|
| `while` loops | Can exceed gas limits. Use bounded `for` with known upper bound. |
| Iterating all map keys | O(n) gas. Use enumeration arrays or maintain counters. |
| Floating point | Non-deterministic in WASM. Use `u256` with implicit decimals. |
| AssemblyScript built-in `Map` | Does not handle `Uint8Array`/`Address` keys correctly. Use `Map` from `@btc-vision/btc-runtime/runtime`. |
| Unbounded arrays | Gas grows linearly. Cap array sizes or use maps. |

### 9.5 Address Truncation

Internally, OP721's enumeration system truncates 32-byte addresses to 30 bytes for storage efficiency. This is handled by the base class — subclass authors do not need to manage it, but should be aware of it when debugging storage.

### 9.6 Replay Protection

- Cross-contract: `domainSeparator` includes the contract address
- Cross-chain: `domainSeparator` includes chain ID and protocol ID
- Signature reuse: approval nonce increments on every gasless approval use
- Expiration: `deadline` is a block height (tamper-proof, not a UNIX timestamp)

---

## 10. Implementation Notes

### 10.1 Token IDs

Token IDs start at **1** by default (`_nextTokenId` is initialized to `u256.One`). Token ID 0 is technically valid but discouraged — it collides with the "uninitialized" value of `StoredMapU256.get()`, making existence checks ambiguous.

### 10.2 Gas Costs

Approximate gas costs for common operations (subject to runtime version):

| Operation | Dominant cost |
|-----------|--------------|
| `mint` | 4 storage writes (owner, balance, enumeration, totalSupply) |
| `transfer` | 6 storage writes (2× enumeration, 2× balance, owner, clear approval) |
| `burn` | 5 storage writes + possible URI deletion |
| `approve` | 1 storage write |
| `setApprovalForAll` | 1 storage write |
| `tokenURI` | 1–2 storage reads |
| `balanceOf` | 1 storage read |
| `ownerOf` | 1 storage read |

Storage reads and writes dominate gas costs. Computation is comparatively cheap.

### 10.3 Collection Metadata

The optional metadata fields (`collectionBanner`, `collectionIcon`, `collectionWebsite`, `collectionDescription`) are stored on-chain and queryable via `collectionInfo()` and `metadata()`. They can be updated post-deployment via `changeMetadata()` (deployer only).

This is useful for marketplaces and explorers that need collection-level display data without relying on external metadata servers.

---

## 11. Reference Implementation

The reference implementation lives in `@btc-vision/btc-runtime/runtime/contracts/OP721.ts`. All compliant contracts **SHOULD** extend this base class rather than reimplementing the interface from scratch.

### Minimal OP721 Collection

```typescript
import { u256 } from '@btc-vision/as-bignum/assembly';
import {
    OP721,
    OP721InitParameters,
    Blockchain,
    Calldata,
    BytesWriter,
    SafeMath,
} from '@btc-vision/btc-runtime/runtime';

@final
export class MyCollection extends OP721 {
    public constructor() {
        super();
    }

    public override onDeployment(calldata: Calldata): void {
        this.instantiate(new OP721InitParameters(
            calldata.readStringWithLength(),   // name
            calldata.readStringWithLength(),   // symbol
            calldata.readStringWithLength(),   // baseURI
            calldata.readU256(),               // maxSupply
        ));
    }

    @method({ name: 'to', type: ABIDataTypes.ADDRESS })
    @returns({ name: 'tokenId', type: ABIDataTypes.UINT256 })
    @emit('Transferred')
    public mint(calldata: Calldata): BytesWriter {
        this.onlyDeployer(Blockchain.tx.sender);

        const to = calldata.readAddress();
        const tokenId = this._nextTokenId.value;

        this._mint(to, tokenId);
        this._nextTokenId.value = SafeMath.add(tokenId, u256.One);

        const writer = new BytesWriter(32);
        writer.writeU256(tokenId);
        return writer;
    }
}
```

This contract inherits all query methods, transfer logic, approval management, enumeration, gasless signatures, and burn functionality from the OP721 base class. The subclass only defines deployment parameters and minting access control.

---

## 12. Differences from ERC-721

For developers coming from Ethereum, the key differences are:

1. **Enumeration is mandatory**, not an extension.
2. **Safe transfers are the default**. There is no `transferFrom` without receiver validation in the standard (though the base class exposes it — use with caution).
3. **Gasless approvals are built-in** via Schnorr signatures (gasless transfers are not yet part of the standard).
4. **Addresses are 32 bytes**, not 20.
5. **`maxSupply` is enforced at the protocol level**, not an optional pattern.
6. **No `receive`/`fallback`** functions. Contracts that want to accept tokens implement `onOP721Received` explicitly.
7. **Collection metadata is on-chain** (banner, icon, description, website) — not just name and symbol.
8. **Post-quantum ready** via ML-DSA-44 signature verification.

---

## 13. Changelog

| Date | Change |
|------|--------|
| 2025-08-22 | Initial draft |
| 2026-02-28 | Rewrite. Removed Solidity-centric framing. Added storage architecture, security invariants, forbidden patterns, gas costs, constructor gotcha, address truncation note. Clarified Schnorr vs ML-DSA transition. Made enumeration mandatory. |
