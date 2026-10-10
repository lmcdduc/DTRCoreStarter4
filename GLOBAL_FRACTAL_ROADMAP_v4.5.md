# Feuille de route fractale globale v4.5

Date: 2026-10-10

## Macrocycle prioritaire

### P1 — Application iPad et noyau
- **Livré:** séparer la bibliothèque `DTRCore` de l'exécutable CLI; conserver tests et CLI séparés.
- **Livré:** façade publique d'adaptation UI, lecture de l'état et mutations limitées à une démonstration en mémoire.
- **À faire:** héberger le paquet dans un dépôt privé/public choisi par le propriétaire, ajouter SPM dans Swift Playgrounds, connecter le `ContentView` avec sauvegarde préalable, compiler et tester sur appareil.
- **Sortie:** l'interface affiche des données provenant de la façade et le statut de chaque donnée (volatile/durable) sans ambiguïté.

### P1 — Intégrité et sécurité DTR
- **Livré:** revue ciblée, risques documentés, exigences de fail-closed et séparation de la preuve.
- **À faire:** injecter signataire/vérificateur de production; clé réelle protégée par mécanisme Apple approprié; ancre de confiance indépendante; tests d'interruption et corruption; tests de concurrence multi-processus; revue indépendante.
- **Sortie:** G3 ne passe qu'avec preuve reproductible, clés réelles et audit indépendant.

### P1 — Falsifiabilité QATOM
- **Livré:** audit de charge et validateur arithmétique général des bilans de charge.
- **Résultat:** les attributions littérales « photon positif » et « proton négatif » sont incompatibles avec les valeurs de référence pour le photon et le proton connus.
- **À faire:** préciser si les variables QATOM sont internes ou identiques aux observables SI; établir une correspondance quantitative et tester des transitions complètes.
- **Sortie:** aucune hypothèse ne devient un résultat sans prédiction numérique préenregistrée, incertitude et données indépendantes.

### P2 — ESC et fournisseurs IA
- Conserver le contrat: IA propose; DTR valide; l'autorité habilitée décide; audit garde la trace.
- Garder le fournisseur IA remplaçable, avec validation de schéma, idempotence et limites de sortie.
- Ne pas exposer de boutons UI pouvant contourner identité, politique, Evolution Gate ou vérification.

## Unité récursive obligatoire

Chaque tâche enfant conserve: `ID`, `parent`, `propriétaire`, `autorité`, `but`, `entrées`, `sorties`, `invariants`, `risque`, `preuve`, `tests`, `rollback`, `statut`, `critères de sortie`, `dépendances`.

## Statuts normalisés

`PROPOSED` · `IMPLEMENTED` · `TESTED_ON_LINUX` · `DEVICE_VERIFIED` · `INDEPENDENTLY_REVIEWED` · `SCIENTIFICALLY_SUPPORTED` · `CONTRADICTED` · `UNRESOLVED` · `BLOCKED`.

## Ordre de la prochaine récursion

1. Sauvegarde de l'app existante.
2. Choisir/autoriser le dépôt Git du paquet; publier les sources sans secrets.
3. Ajouter le paquet dans Swift Playgrounds et compiler sur iPad.
4. Brancher l'UI sur `DTRAppSession`; vérifier que l'interface indique « mémoire volatile ».
5. Tester les cas UI: initial, création, transition, double action, fermeture/reprise, erreur.
6. Poursuivre le travail d'ancre indépendante et de signature seulement après définition de la custodie des clés.
7. Clarifier la charge QATOM avant d'étendre les hypothèses de géométrie ou de spin.
