# Global Fractal Status — DTR Core v4.4

Date: 2026-10-09

## Confirmed user environment

- The user confirms the DTR Swift Playgrounds app currently launches on an iPad Pro.
- The user does not have a Mac.
- Therefore, the app-first workflow must be viable in Swift Playgrounds on iPad; Linux remains a separate core test environment.

## Changes in this release

- Updated optional `iPadDemo/ContentView.swift` with interactive in-memory cycle progression, reset, an explicitly simulated governance toggle, and an explicitly non-persistent local audit view.
- Added `IPAD_PLAYGROUNDS_RUNBOOK_v1.0.md` with safe update, backup, test and integration guidance.
- Added `QATOM_HYPOTHESIS_LEDGER_v1.1.md` with four hypothesis records, missing definitions, required quantitative predictions, and falsification conditions.
- Added `GLOBAL_FRACTAL_ROADMAP_v4.4.md` and `PLANIFICATION_FRACTALE_GLOBALE_v1.8.md` with priority lanes, recursion contract, and exit gates.

## Core test status

The underlying DTR Swift package code is unchanged from v4.3. Re-run `swift test` and `swift run DTRCoreDemo` in the available Linux environment before distributing this archive. This does not compile the iPad SwiftUI file and does not verify iPadOS.

## Open blockers

1. The UI is a simulation and does not call the durable core.
2. DTR package layout needs refactoring to expose a reusable iOS library target distinct from the CLI executable.
3. The app must be tested on the user's actual iPad after updating `ContentView.swift`.
4. A SHA-256 anchor is not a digital signature; independent custody and signed anchor remain open.
5. Multi-process safety, crash/fault injection, authorization/audit of trust mutations, and independent security review remain open.
6. QATOM is speculative and needs quantitative predictions compared against authoritative data, with explicit falsification criteria.

## Status rule

`IMPLEMENTED`, `TESTED_ON_LINUX`, `DEVICE_VERIFIED`, `INDEPENDENTLY_REVIEWED`, and `SCIENTIFICALLY_SUPPORTED` are distinct states. Do not infer one from another.
