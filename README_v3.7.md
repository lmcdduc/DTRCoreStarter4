# DTR Core Starter v3.7

## Added in v3.7 — Journal checkpoints

`JournalCheckpointStore` creates a versioned point-in-time fingerprint only after `JournalPairInspector` confirms that the event and audit journals are consistent. It records raw-file digests, record counts, checkpoint identity/time and audit-chain tip. Verification detects post-checkpoint edits, including a rewritten but internally consistent journal pair. Existing checkpoints are not silently overwritten, and inconsistent pairs cannot be checkpointed.

### Important security boundary

The checkpoint uses the project's `SHA256Reference` implementation and is **not digitally signed**. It is a tamper-detection fingerprint, not production-grade proof against an attacker who can rewrite the journals and the checkpoint together. For meaningful protection, keep the checkpoint in separately controlled storage and replace the reference digest/signing implementation with reviewed platform cryptography and protected key management. No production security claim is made.

## Validation

- `swift test`: 116 tests passed, 0 failures.
- `swift run DTRCoreDemo`: run separately for smoke validation.
- Tested on Swift 6.2.1, Linux x86_64; not tested on a physical iPad/iPadOS in this iteration.
