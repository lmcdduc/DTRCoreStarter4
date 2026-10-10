# Global Fractal Roadmap — v4.3

## Operating principles

1. DTR validates and records; AI proposes; authorized human/governance authority approves high-impact or irreversible actions.
2. Evolution Gate remains fail-closed when identity, authority, policy, evidence, impact, or rollback criteria are missing.
3. Truth Engine labels must reflect evidence status; Value Engine cannot override hard safety/governance guardrails.
4. Software verification and scientific validation are separate tracks.
5. Every level recursively uses Object → State → Event → Transition → Decision → Authority → Audit → Memory.

## P1-A — iPad application demonstrator

- A1. Create a SwiftUI app shell and navigation: Dashboard, Lifecycle, Governance/Gate, Audit, Research.
- A2. Connect to DTR Core contracts without duplicating policy in UI.
- A3. Add deterministic demo data and clear demo/production labels.
- A4. Display gate denial reasons, evidence provenance, and rollback/recovery status.
- A5. Export/import a demo bundle; do not place secrets in project files.
- A6. Build and run in Swift Playgrounds on iPad; record OS/app versions and observed results.

Exit: app launches on the target iPad, lifecycle and denied action are demonstrated, and the audit view is consistent with the persisted events.

## P1-B — QATOM scientific research

- B1. Freeze a versioned glossary and ontology (quart, link, state, dimension, charge, spin, mass, pressure, susceptibility, local time).
- B2. Separate assumptions, definitions, derivations, empirical claims, and analogies.
- B3. For each hypothesis, state variables and units; check dimensional consistency and conservation laws.
- B4. Derive at least one quantitative prediction that differs from the Standard Model or an established baseline.
- B5. Define experimental observables, data source, uncertainty, statistical test, and rejection threshold before inspecting outcomes.
- B6. Compare against Particle Data Group / CERN references; explain deviations rather than relabeling established particles without evidence.
- B7. Maintain a ledger: hypothesis ID, version, prediction, test, result, confidence, counterevidence, next action.

Exit: at least one hypothesis is mathematically explicit, dimensionally consistent, numerically predictive, and testable against public data or a feasible experiment. A conceptual diagram alone does not pass this gate.

## P1-C — DTR Core trust and governance

- C1. Add a signed trust-anchor envelope through injected signer/verifier contracts; never fake a production signature.
- C2. Test unknown/revoked keys, altered payloads, algorithm downgrade, missing anchor, stale anchor, and key rotation.
- C3. Add fault injection for partial writes, interrupted append, malformed/truncated files, duplicate events, and restart recovery.
- C4. Define process model; either enforce a single writer or add tested inter-process coordination.
- C5. Require capability/policy/Evolution Gate/audit for trust-policy changes.
- C6. Define independent storage, key custody, recovery, rotation, revocation, and incident response.
- C7. Obtain independent security review before any production-security claim.

Exit: security design reviewed; tests cover expected failure paths; operational custody is specified and demonstrated outside the journal's trust boundary.

## Cross-cutting fractal governance

For each requirement, store: ID, parent ID, scope, owner, authority, risk, input/output contract, invariant, evidence, tests, dependencies, status, rollback, and exit criterion. A parent rolls up as blocked if any required child is blocked. The UI may show a roll-up but cannot silently turn unknown into passed.

## Research references

- Apple Developer, Swift Playgrounds: https://developer.apple.com/documentation/swift-playgrounds
- Apple Support, Swift Playground User Guide for iPadOS: https://support.apple.com/guide/playgrounds-ipad/welcome/ipados
- NIST SP 800-57 Part 1 Rev. 5, key-management guidance: https://csrc.nist.gov/pubs/sp/800/57/pt1/r5/final
- CERN, Standard Model: https://home.web.cern.ch/fr/science/physics/standard-model/
- Particle Data Group, Review of Particle Physics: https://pdg.lbl.gov/
