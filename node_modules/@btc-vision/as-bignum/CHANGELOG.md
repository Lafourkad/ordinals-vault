# Changelog


## [v0.1.0] - 2026-02-05

- No changes

## [v0.1.0-beta.0] - 2026-01-23

### Other Changes

- Fix i256.isEmpty() inverted logic (5) by @matbout
- Add CI/CD, changelog, audit, and documentation updates (6) by @BlobMaster41


All notable changes to this project will be documented in this file.

This changelog is automatically generated from merged pull requests.

## [v0.1.0-beta.0] - 2025-01-22

### Features

- Complete rewrite of division and modulo operations for u128 and u256 types
- Full arithmetic operations support for all integer types
- Comprehensive unit test coverage
- Performance optimizations for critical operations

### Security

- Professional security audit by Verichains completed
- All critical vulnerabilities from original library addressed
- Integer overflow/underflow protections implemented
- Division by zero handling added

### Breaking Changes

- Library forked and renamed to `@btc-vision/as-bignum`
- Minimum Node.js version requirement: 18.0.0

### Bug Fixes

- Fixed division operations that were missing in original library
- Corrected shift operation behavior for amounts >= bit width
- Fixed string parsing validation
- Resolved byte array handling issues

### Performance

- Rewrote critical paths for better performance
- Reduced unnecessary memory allocations
- Optimized multiplication and division algorithms
