# DTR Core Starter v3.6

## Vérification

- `swift test` — 112 tests réussis, 0 échec dans Swift 6.2.1 sur Linux x86_64.
- `swift run DTRCoreDemo` — scénario de démonstration exécuté avec succès.

## Nouveau dans v3.6

`JournalPairInspector.assess(eventURL:auditURL:)` diagnostique une paire de journaux sans la modifier. Il distingue les journaux cohérents, les journaux en avance, les journaux invalides et les enregistrements non concordants. Toute anomalie requiert une intervention explicite.

## Limites

Le diagnostic n'effectue aucune récupération. Les deux fichiers ne sont pas atomiques, le checkpoint externe protégé reste à construire, la cryptographie de référence n'est pas une primitive de production et aucun test iPadOS réel ni appel live à OpenAI n'a été exécuté. QATOM reste une piste hypothétique non validée.

## Signed journal checkpoints (v3.8)

`SignedJournalCheckpointStore` wraps a validated `JournalCheckpoint` in a canonical signed envelope. Verification requires an explicitly trusted key ID, verifies the signature, then verifies the live event/audit pair against the checkpoint. Apple builds conditionally expose a CryptoKit P-256/ECDSA-SHA256 signer and verifier.

**Security caveat:** Linux tests use a test-only fake signer/verifier and do not validate real cryptography. The CryptoKit branch, Keychain/Secure Enclave storage, durable trust-anchor/revocation policy, iPad build, and independent security review remain outstanding. Do not use the test signer or label this package production-secure.


## v4.0 — durable checkpoint trust registry

`DurableCheckpointTrustRegistry` persists trust and revocation as an append-only JSONL event stream. It replays the journal on startup, enforces monotonic sequence numbers and legal state transitions, fails closed on malformed/truncated journals, and produces a `JournalCheckpointTrustPolicy` that binds allowed algorithms to each key. Revocation is key-wide and takes precedence over trust. The registry stores key identifiers and algorithm names only; it does not store private keys.

Operational limits: single-process only; no cryptographic tamper-evidence on the registry journal, no multi-process locking, no external signed trust anchor, and no real Apple-device/CryptoKit verification executed in this Linux run.


## v4.1 — Hash-chained trust registry

The durable checkpoint trust journal now links each event to the previous SHA-256 digest and validates the chain on replay. This detects local event/link changes but is not an external trust anchor: a fully privileged attacker can rewrite the complete journal and recompute hashes. See `GLOBAL_FRACTAL_STATUS.md` and `GLOBAL_FRACTAL_ROADMAP.md`. Validation on Linux: 129 tests passing; Apple CryptoKit and physical iPad validation remain pending.

## v4.2 — Portable trust anchor

The durable checkpoint trust registry exposes its current sequence and hash-chain tip. `CheckpointTrustAnchor` captures those fields plus a canonical digest of the trust policy, and verifies a later snapshot against the captured state. Keep the anchor outside the registry's security boundary if rollback detection is required. The anchor's SHA-256 digest is not a signature and does not provide authenticity if an attacker can replace both files.

Verification on 2026-10-09: Swift 6.2.1 / Linux x86_64; 132 tests passed; demo passed. Apple-platform and independent security validation remain outstanding.

## v4.3 — Portable checkpoint anchor store

`CheckpointTrustAnchorStore` adds fail-closed file export/load/verification for the portable trust anchor. Export refuses to replace an existing destination; verification compares sequence, chain tip, and canonical trust-policy digest against the live registry snapshot. Store the anchor outside the journal's security boundary. This component does not sign the anchor and does not independently authenticate its origin.

Validation on Swift 6.2.1 / Linux x86_64: 135 tests passed; `swift run DTRCoreDemo` passed. iPadOS runtime validation remains outstanding.

## v4.4 — iPad-first fractal development package

This release adds an optional interactive SwiftUI prototype in `iPadDemo/ContentView.swift`, an iPad/Swift Playgrounds runbook, a more explicit global roadmap and fractal plan, and a QATOM hypothesis ledger with operational definitions and falsification requirements. The interactive UI is still a local simulation; it is not wired to the durable core, and its audit rows are volatile demonstration entries.

The user's existing Swift Playgrounds app is confirmed to launch. Apply the updated `ContentView.swift` only to a duplicated project first, then verify all five tabs on the physical iPad. No Mac is required for this UI iteration. However, a reusable local Swift package integration path still needs deliberate refactoring and hosting before Swift Playgrounds can import the DTR core as a dependency.

Research anchors: Apple Swift Playgrounds guide (create app playgrounds and add Swift files/packages), CERN Standard Model overview, and Particle Data Group Review of Particle Physics. These sources provide platform instructions and physics comparison baselines; they do not validate QATOM.

## v4.5 — bibliothèque réutilisable et contrôle ciblé

- Le code réutilisable est désormais dans la cible bibliothèque `DTRCore`; le programme CLI est dans `DTRCoreDemo`; les tests ciblent la bibliothèque.
- `DTRAppSession` fournit une façade de démonstration en mémoire et des instantanés en lecture. Elle n'est pas une frontière de sécurité ni un stockage durable.
- `QATOMChargeConservation` calcule le bilan de charge en unités de charge élémentaire sans valider les affectations fournies.
- Voir `IPAD_CORE_ADAPTER_v1.0.md`, `DTR_SECURITY_REVIEW_v1.0.md`, `QATOM_CHARGE_CONSERVATION_REVIEW_v1.0.md`, `GLOBAL_FRACTAL_ROADMAP_v4.5.md` et `GLOBAL_FRACTAL_STATUS_v4.5.md`.
- Validation de cette version: 139 tests passés sous Linux; CLI exécuté. Aucune compilation iPadOS ni revue indépendante n'est revendiquée.
