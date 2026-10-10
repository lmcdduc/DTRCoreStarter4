# DTR Core Starter v3.8

This increment adds signed checkpoint contracts and a conditional CryptoKit P-256/ECDSA-SHA256 implementation for Apple platforms.

## Verified in this environment
- Swift 6.2.1 on Linux x86_64
- `swift test`: 119 tests passed, 0 failures
- `swift run DTRCoreDemo`: succeeded

## Security limitations
- Signature-contract tests use a test-only fake signer; they do not validate cryptographic strength.
- CryptoKit implementation has not been compiled or run on Apple hardware in this environment.
- Keychain/Secure Enclave persistence, trust-anchor distribution, persistent revocation/rotation, external storage protection, and independent security review remain open.
- This result is not a production security certification.
