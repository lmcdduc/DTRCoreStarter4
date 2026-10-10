# DTR Core — Runbook iPad / Swift Playgrounds v1.0

Date: 2026-10-09

## Environment constraint

The maintainer has an iPad Pro and no Mac. Swift Playgrounds on iPad is therefore the primary editing and demo environment. A Mac/Xcode-only workflow is not a prerequisite for continuing the prototype. A Linux Swift toolchain remains useful for the core package tests, but Linux test success does not certify iPadOS compilation.

## Current app status

The user has confirmed that the existing Swift Playgrounds app starts. The file `iPadDemo/ContentView.swift` is an optional updated interactive prototype. It includes local in-memory navigation through the DTR lifecycle, a simulated governance toggle, and a simulated audit list. It does not connect to the durable Swift package core, persist events, authenticate a user, sign decisions, or enforce security controls.

## Update the existing app safely

1. In Swift Playgrounds, open the DTR app that already runs.
2. Before editing, duplicate the app from the Playgrounds library or use Share/Export to preserve the working version in Files/iCloud Drive.
3. In the app navigator, open `ContentView.swift`.
4. Replace that file with the contents of `iPadDemo/ContentView.swift` from this package. Do not replace the generated `@main` app entry-point file.
5. Run the app. Check all five tabs: Accueil, Cycle, Gate, Audit, QATOM.
6. Tap **Avancer d’une étape** and confirm the current cycle step changes; switch the governance simulation toggle and confirm a local audit row appears; reset and confirm state returns to the start.
7. Treat all of those rows as simulated volatile state. Closing/restarting the app may clear them.
8. If the app fails to compile, restore the duplicated working copy first; then report the exact Swift error and line.

## Integrating the real DTR package without a Mac

Swift Playgrounds can add public Swift packages by URL, but it cannot simply import an arbitrary folder from the local extracted archive as a package dependency by magic. The current DTR package has not been published to a public Git repository, and the package uses a command-line executable/test target layout. Therefore, do not claim that the app is already connected to the core.

Recommended path:
- Keep the running UI as a clearly labelled prototype.
- Refactor reusable core code into an iOS-compatible library target, separated from `main.swift` and command-line-only behavior.
- Publish or host the package in a repository with deliberate access control before adding it through Swift Package Manager.
- Check every dependency and remove test-only crypto implementations from production paths.
- Add adapter tests and an iPad-specific integration checklist before describing the UI as connected.

## Backups and persistence

- Save a versioned copy before every structural change.
- Store source/project backups in iCloud Drive or another independently managed location; keep at least one dated offline/exported copy.
- The portable SHA-256 trust anchor is not a signature. An anchor stored beside the journal does not protect against an attacker able to replace both.
- Do not place API keys, private signing keys, passwords, or personal secrets in Swift source files or project screenshots.

## Exit criteria for the iPad prototype

- [ ] App opens and all five tabs render on the actual iPad.
- [ ] Cycle button changes the visible step deterministically.
- [ ] Governance toggle is explicitly labelled as simulation.
- [ ] Audit view never labels volatile demo rows as durable proof.
- [ ] Reset behavior works.
- [ ] Source backup exists before edits.
- [ ] No production-security claim is made until the real core is integrated and independently reviewed.

## Addendum v1.1 — library target now exists

As of DTR Core v4.5, the package has a reusable SwiftPM library target named `DTRCore`, with `DTRCoreDemo` as a separate CLI target. A thin public `DTRAppSession` adapter is available for an in-memory demo. This resolves the previous source-layout blocker, but **does not** itself connect the app or publish the package.

To complete iPad integration:
1. Back up the currently working app.
2. Place this package in a Git repository you control; ensure it contains no secrets.
3. Add the repository as a Swift package dependency in Swift Playgrounds.
4. Import `DTRCore` and test the example in `IPAD_CORE_ADAPTER_v1.0.md` before replacing the full screen.
5. Compile and exercise it on the actual iPad; do not mark `DEVICE_VERIFIED` until this is done.
6. Keep the adapter's state visibly labelled as volatile; do not connect it to real governance actions.
