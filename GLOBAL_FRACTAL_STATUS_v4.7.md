# État global fractal — DTR Core v4.7

Date: 2026-10-10

## Nouveaux changements

- Validateur de conservation de charge renforcé : rejet explicite des charges non finies, multiplicités nulles/négatives, étiquettes vides, états vides, tolérances invalides et dépassements arithmétiques.
- Le résultat du calcul expose désormais `inputValid` et une liste d'erreurs distincte de `conserved`.
- Ajout de quatre tests ciblant les entrées invalides.
- Références QATOM mises à jour vers le PDG 2026 et la page CERN en français; limites chiffrées identifiées comme limites, pas comme mesure d'une charge non nulle.
- Plan d'intégration iPad et backlog récursif créés; compteur UI corrigé à 139 tests connus avant le dernier lot de tests.

## Validation

`swift test`: 143 tests réussis, 0 échec sous Linux. `swift build -c release`: réussite. `swift run DTRCoreDemo`: réussite; le rollback non autorisé est refusé. La vue SwiftUI n’a pas été compilée sur iPadOS.

## Portes

- G1 Core regression: `TESTED_ON_LINUX` — 143 tests, 0 échec.
- G2 iPad runtime: `BLOCKED_DEVICE_TESTS_PENDING`.
- G3 Secure trust: `BLOCKED` — ancre externe, vraie signature/custodie de clés et revue indépendante.
- G4 ESC governance: `PARTIAL` — politiques exécutables et autorité réelle non intégrées à l'UI.
- G5 QATOM claim: `CONTRADICTED` pour les affectations littérales de charge documentées; hypothèses restantes `UNRESOLVED`.
- G6 Integrated demo: `BLOCKED` — dépôt distant et test réel sur iPad requis.
