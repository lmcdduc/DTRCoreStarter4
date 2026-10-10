# État global fractal — DTR Core v4.5

Date: 2026-10-10

## Livré et vérifié dans l'environnement Linux

- Refactorisation Swift Package: cible bibliothèque réutilisable `DTRCore`, cible exécutable `DTRCoreDemo`, cible de tests distincte.
- Ajout d'une façade publique minimale `DTRAppSession` et d'instantanés UI en lecture, explicitement en mémoire et destinés à la démonstration.
- Ajout d'un calculateur arithmétique de conservation de charge QATOM (charges en unités de e, multiplicité, tolérance) et de tests unitaires.
- Revue de sécurité ciblée et revue scientifique de cohérence des charges documentées.
- Résultats: 139 tests réussis, 0 échec; exécutable CLI exécuté avec sortie attendue.

## Non vérifié / blocages

1. La nouvelle façade n'est pas encore connectée à l'application de l'utilisateur.
2. Le fichier SwiftUI n'a pas été compilé sur iPadOS ni testé sur l'iPad réel.
3. Le paquet n'est pas publié dans un dépôt Git accessible; Swift Playgrounds ne peut donc pas encore l'ajouter comme dépendance distante.
4. La façade est en mémoire et n'est pas une frontière d'autorisation de production.
5. Ancre indépendante, vraie signature/custodie de clés, tests de panne sur cible et revue de sécurité indépendante restent ouverts.
6. La charge QATOM littérale « photon positif / proton négatif » contredit les propriétés de référence. H-QATOM-002 est marqué `CONTRADICTED` pour ces affectations spécifiques, pas pour l'ensemble du programme QATOM.

## Portes

- G1 Core regression: `TESTED_ON_LINUX` — 139 tests.
- G2 iPad runtime: `BLOCKED` — exécution sur appareil requise.
- G3 Secure trust: `BLOCKED` — ancre indépendante, clés et revue manquantes.
- G4 ESC governance: `PARTIAL` — architecture documentée; pas d'autorité réelle connectée à l'UI.
- G5 QATOM claim: `CONTRADICTED` pour les affectations de charge citées; autres hypothèses `UNRESOLVED`.
- G6 Integrated demo: `BLOCKED` — dépendance SPM distante et validation iPad requises.

## Règle de statut

Le succès des tests logiciels ne démontre pas la validité scientifique de QATOM et ne certifie pas la sécurité de production.
