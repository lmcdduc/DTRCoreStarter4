# Global Fractal Roadmap — v4.4

Date: 2026-10-09

## North Star

An auditable, evolvable DTR system with a native iPad demonstrator, controlled execution, explicit human authority, recoverable state, and a separate evidence-led QATOM research track.

## Priority lanes

### P1 — iPad-first demo (active)
- Preserve the working Swift Playgrounds app.
- Offer the optional interactive `iPadDemo/ContentView.swift` with cycle advancement, reset, simulation-only gate state, and a local non-persistent audit list.
- Verify the five tabs and interactions on the physical iPad.
- Keep demo state explicitly labelled as simulated.
- Next gate: refactor DTR Core into a reusable iOS-compatible library and connect a minimal read-only status adapter before enabling any write action.

### P1 — DTR integrity and authorization
- Signed external anchor using a real signer/verifier implementation.
- Key custody outside the journal's trust boundary.
- Fault injection: truncation, partial write, unavailable storage, malformed data, duplicate event, interrupted append, rollback.
- Concurrency and locking policy; current registry is not established as multi-process safe.
- Authorization and audit for every trust-registry mutation.
- Independent review of crypto and recovery logic.

### P1 — QATOM falsifiability
- Maintain `QATOM_HYPOTHESIS_LEDGER_v1.1.md` separately from production facts.
- Prioritize one hypothesis at a time; define quantities/units and a quantitative prediction before searching target data.
- Compare with CERN/PDG baseline data; pre-register uncertainty and falsification criteria.
- Do not use DTR test results as evidence for physical claims.

### P2 — ESC governance integration
- Map each authority and permission to a machine-readable policy contract.
- For each proposal: identity → authorization → policy → impact → Evolution Gate → execution → verification → audit → rollback.
- Require explicit human approval for high-risk, irreversible, privacy-sensitive, financial, or externally impactful actions.
- Record dissent, uncertainty, evidence, version, and owner.

### P2 — AI provider boundary
- Keep the model/provider replaceable behind a provider contract.
- Do not place secrets in source or UI.
- Add live network/provider integration only after consent, key handling, rate limits, error handling, and audit policy are defined.

## Recursive work unit

Every node at every depth has: `ID, parent, owner, authority, purpose, inputs, outputs, invariants, risk, evidence, tests, rollback, status, exit criteria, dependencies`.

The repeating lifecycle is:

**Object → State → Event → Transition → Decision → Authority → Audit → Memory**

A parent is not `DONE` unless all mandatory children meet their exit criteria. Unknown remains `UNVERIFIED`. Test success does not imply production security, scientific truth, or device compatibility.

## Exit gates

- **G1 Core regression:** all automated tests pass in declared environment.
- **G2 iPad runtime:** actual device compiles/runs; interactions checked; no simulated status is misrepresented as live.
- **G3 Secure trust:** real signature verified; external key custody documented; rollback/fault tests pass; independent review complete.
- **G4 Governance:** authorization decisions auditable and high-risk actions gated by the proper authority.
- **G5 QATOM claim:** formal derivation, units, numerical prediction, uncertainty, independent comparison and explicit falsification condition recorded.
- **G6 Integrated demo:** app, core, governance and evidence register connected without conflating their validation statuses.
