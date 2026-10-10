# Planification fractale globale v1.8

Date: 2026-10-09

## Décision structurante

L’environnement principal de développement de la démonstration est désormais l’iPad avec Swift Playgrounds; aucun Mac n’est disponible. Le noyau DTR peut continuer à être testé sur Linux, mais le test Linux et le test iPad sont deux portes de validation distinctes.

## Priorités ordonnées

1. **P1 — Préserver et stabiliser l’app iPad existante.** Sauvegarder avant modification; valider navigation, cycle, Gate simulé, audit local et réinitialisation.
2. **P1 — Découpler le noyau.** Séparer la bibliothèque métier DTR du point d’entrée CLI et des tests pour préparer une dépendance Swift Package Manager iOS-compatible.
3. **P1 — Durcir la confiance.** Signature d’ancrage externe, garde des clés, injection de pannes, politique de concurrence, journalisation des mutations et revue indépendante.
4. **P1 — Rendre QATOM réfutable.** Un seul objet scientifique par cycle, variables et unités, équations, prédiction numérique, incertitude, données de référence et critère de réfutation.
5. **P2 — Gouvernance ESC.** Contrats d’autorité, permissions, Evolution Gate, audit, rollback et traçabilité des décisions.
6. **P2 — Intégration du fournisseur IA.** Seulement après contrat, gestion des secrets, erreurs, consentement et audit.
7. **P3 — Démonstrateur intégré.** Connexion UI-noyau en lecture seule d’abord, puis mutations contrôlées après validation des contrats.

## Cycle récursif par priorité

Pour chaque tâche :
- Définir l’objet et l’objectif observable.
- Capturer l’état initial et les dépendances.
- Formaliser l’événement déclencheur.
- Définir la transition et les invariants.
- Évaluer les risques et l’impact.
- Déterminer l’autorité et la permission requises.
- Exécuter en environnement contrôlé.
- Vérifier par tests indépendants et conserver les résultats.
- Préparer récupération/rollback.
- Mettre à jour mémoire, statut, version et critères de sortie.

## Statuts normalisés

- `PROPOSED`: idée non exécutée.
- `IMPLEMENTED`: code/document créé.
- `TESTED_ENVIRONMENT_X`: test exécuté dans un environnement nommé.
- `DEVICE_VERIFIED`: testé sur l’appareil cible.
- `INDEPENDENTLY_REVIEWED`: revue indépendante terminée.
- `SCIENTIFICALLY_SUPPORTED`: données reproductibles compatibles avec la prédiction.
- `FALSIFIED`: observation incompatible avec l’hypothèse selon le critère préétabli.
- `BLOCKED`: dépendance manquante documentée.

Ces statuts ne sont pas interchangeables. Une tâche peut être `IMPLEMENTED` et rester `UNVERIFIED` sur iPad.
