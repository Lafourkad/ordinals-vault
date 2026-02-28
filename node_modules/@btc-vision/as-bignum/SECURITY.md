# Security Policy

<p align="center">
  <a href="https://verichains.io">
    <img src="https://raw.githubusercontent.com/btc-vision/contract-logo/refs/heads/main/public-assets/verichains.png" alt="Verichains" width="100"/>
  </a>
</p>

<p align="center">
  <strong>Professionally Audited by <a href="https://verichains.io">Verichains</a></strong>
</p>

## Audit Status

| Package               | Auditor                             | Status  |
|-----------------------|-------------------------------------|---------|
| @btc-vision/as-bignum | [Verichains](https://verichains.io) | Audited |

## Supported Versions

| Version | Supported                     |
|---------|-------------------------------|
| 0.1.x   | :white_check_mark:            |
| < 0.1.0 | :warning: Upgrade recommended |

## Reporting a Vulnerability

We take security vulnerabilities seriously. If you discover a security issue, please report it responsibly.

### How to Report

1. **DO NOT** open a public GitHub issue for security vulnerabilities
2. Use [GitHub Security Advisories](https://github.com/btc-vision/as-bignum/security/advisories/new) to report
   vulnerabilities privately
3. Include detailed steps to reproduce the vulnerability
4. Allow reasonable time for a fix before public disclosure

### What to Include

- Description of the vulnerability
- Affected version(s)
- Steps to reproduce
- Potential impact
- Suggested fix (if any)

### Response Timeline

| Action                   | Timeframe           |
|--------------------------|---------------------|
| Initial response         | 48 hours            |
| Vulnerability assessment | 7 days              |
| Patch development        | 14-30 days          |
| Public disclosure        | After patch release |

## Security Scope

### In Scope

- Integer arithmetic operations (u128, u256, i128, i256)
- Division and modulo operations
- Bit manipulation operations
- Type conversions
- Memory safety
- Buffer handling

### Out of Scope

- Third-party dependencies (report to respective maintainers)
- User implementation errors
- Development/test environment issues only

## About the Audit

This library has undergone a comprehensive security audit by [Verichains](https://verichains.io), a leading blockchain
security firm with extensive experience in:

- Smart contract security audits
- Blockchain protocol assessments
- Cryptographic implementation reviews
- WebAssembly security analysis

### Audit Scope

The security audit covered the following areas:

#### Integer Operations

- [x] Overflow/underflow detection in arithmetic operations
- [x] Division by zero handling
- [x] Modulo operation edge cases
- [x] Multiplication overflow scenarios
- [x] Power function boundary conditions

#### Bit Manipulation

- [x] Shift operation bounds checking
- [x] Rotate operations correctness
- [x] Bitwise AND/OR/XOR/NOT operations
- [x] Count leading/trailing zeros accuracy
- [x] Population count correctness

#### Type Conversions

- [x] Safe narrowing conversions (u256 -> u128 -> u64)
- [x] Sign extension correctness (signed types)
- [x] String parsing validation
- [x] Byte array serialization/deserialization

#### Memory Safety

- [x] Buffer bounds checking
- [x] Immutable constant protection
- [x] Clone operation integrity
- [x] No uninitialized memory access

## Vulnerabilities Addressed

This fork addresses critical vulnerabilities found in the original [as-bignum](https://github.com/MaxGraey/as-bignum)
library.

## Security Best Practices

When using this library, follow these guidelines:

### Input Validation

```typescript
// Always validate external input before conversion
if (inputString.length > 78) { // Max digits for u256
  throw new Error("Input too large");
}
let value = u256.fromString(inputString);
```

### Division Safety

```typescript
// Check for zero divisor
if (divisor.isZero()) {
  throw new Error("Division by zero");
}
let result = dividend / divisor;
```

### Overflow Awareness

```typescript
// Use muldiv for multiplication followed by division to avoid overflow
let result = u128.muldiv(a, b, c); // (a * b) / c without intermediate overflow
```

### Immutable Constants

```typescript
// Use immutable versions for read-only access
let zero = u128.immutableZero; // More efficient, guaranteed unchanged
```

## Audit Report

The full audit report from Verichains is available in the [AUDIT](./AUDIT) directory.

## Contact

- **Security Issues**: [GitHub Security Advisories](https://github.com/btc-vision/as-bignum/security/advisories/new)
- **General Issues**: [GitHub Issues](https://github.com/btc-vision/as-bignum/issues)
- **Website**: [opnet.org](https://opnet.org)
- **Auditor**: [Verichains](https://verichains.io)

---

<p align="center">
  <sub>Security is a continuous process. This document will be updated as new audits are completed.</sub>
</p>
