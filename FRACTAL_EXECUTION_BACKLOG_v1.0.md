# Backlog d'exécution fractale — DTR / ESC

Date: 2026-10-10

## Principe récursif

Chaque sous-projet suit la même unité de travail :

`Objet → État → Événement → Transition → Décision → Autorité → Audit → Mémoire`

Chaque nœud contient : identifiant, parent, objectif, entrées, sorties, invariants, dépendances, risque, autorité, tests, preuve, retour arrière, statut et critère de sortie. Une sous-tâche n'est terminée que lorsque ses critères sont observables.

## Priorités ordonnées

### P0 — reproductibilité et intégrité de livraison
- [x] Exécuter `swift test` après la séparation des cibles.
- [x] Exécuter `swift build -c release`.
- [x] Exécuter `swift run DTRCoreDemo` et conserver la sortie.
- [x] Corriger le compteur UI historique de 135 vers 139 tests connus.
- [ ] Publier le paquet dans un dépôt Git contrôlé et choisir un tag immuable.

### P1 — intégration iPad
- [x] Écrire le plan d'intégration et de test sur appareil.
- [ ] Sauvegarder/dupliquer le projet qui fonctionne.
- [ ] Ajouter la dépendance `DTRCore` dans Swift Playgrounds.
- [ ] Remplacer progressivement l'état local par un adaptateur de session, sans autorité réelle.
- [ ] Exécuter IPAD-01 à IPAD-10 et archiver les preuves.

### P1 — frontière de sécurité
- [x] Documenter la limite SHA-256 et la nécessité d'une ancre indépendante.
- [ ] Injecter un vérificateur de signature réel basé sur CryptoKit pour les plateformes Apple.
- [ ] Séparer l'identité de l'acteur, la capacité et l'autorité d'approbation.
- [ ] Tester falsification, rejeu, révocation, rotation de clé, échec d'écriture et restauration.
- [ ] Revue indépendante avant toute prétention de sécurité de production.

### P1 — recherche QATOM
- [x] Ajouter un contrôle arithmétique de conservation de charge.
- [x] Enregistrer la contradiction des affectations littérales proton négatif / photon positif avec les valeurs de référence.
- [ ] Définir un observable unique, des unités et un domaine de validité pour chaque hypothèse.
- [ ] Dériver une prédiction quantitative distincte du modèle standard.
- [ ] Comparer à des données expérimentales publiques et propager les incertitudes.
- [ ] Marquer `SUPPORTED`, `CONTRADICTED` ou `UNRESOLVED` avec références et critères de réfutation.

### P2 — gouvernance ESC et moteur d'évolution
- [ ] Transformer les principes de gouvernance en politiques exécutables versionnées.
- [ ] Ajouter des scénarios adversariaux au Gate et à Truth Engine.
- [ ] Définir les seuils d'escalade humaine pour risques élevés et actions irréversibles.
- [ ] Vérifier rollback, traçabilité et séparation proposition/approbation/exécution.

## Dépendances bloquantes

- L'intégration iPad dépend d'un dépôt accessible et d'un test sur appareil.
- La sécurité de production dépend d'une ancre externe, d'une signature vérifiée et d'une revue indépendante.
- Toute conclusion scientifique forte dépend d'une prédiction quantitative et de données indépendantes.

## Statuts autorisés

`PROPOSED`, `IMPLEMENTED`, `TESTED_ON_LINUX`, `DEVICE_VERIFIED`, `INDEPENDENTLY_REVIEWED`, `SCIENTIFICALLY_SUPPORTED`, `CONTRADICTED`, `FALSIFIED`, `BLOCKED`.

Ne pas convertir un statut en un autre sans preuve associée.
