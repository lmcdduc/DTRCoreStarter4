# DTR — Spécification fractale globale et plan d'exécution

**Version :** 1.0  
**Date :** 2026-10-09  
**Statut :** cadre directeur formalisé; exécution technique en cours; validation globale non acquise.

## 1. Mandat et boucle récursive

Cycle de travail : **formaliser → rechercher → modéliser → implémenter → tester → auditer → décider → mémoriser → recommencer**.

La récursion est bornée par profondeur, budget, dépendances, délai et risque. « GO TOUT » autorise les opérations ordinaires, réversibles et à faible risque; il ne remplace pas l'approbation humaine pour les actions irréversibles, critiques ou touchant à la gouvernance. Aucun succès ne peut être déclaré sans résultat vérifié.

## 2. Cycle DTR canonique

**Objet → État → Événement → Transition → Décision → Autorité → Audit → Mémoire**

Primitives : Objet, Lien, État, Transformation et Règle. Les événements consignent les changements; l'état courant est une projection; les métadonnées décrivent les objets et relations; le cache temporaire n'est pas une source d'autorité.

## 3. Contrat obligatoire de chaque WorkItem

Chaque nœud doit définir :
1. identifiant stable, parent, version et propriétaire;
2. objectif, périmètre, entrées, sorties et dépendances;
3. hypothèses, sources et provenance;
4. état, risque, autorité et transitions permises;
5. critères d'acceptation mesurables;
6. tests et preuves liés à chaque critère;
7. coûts, incertitudes et effets secondaires;
8. plan de retour arrière ou justification de non-réversibilité;
9. budgets et conditions d'arrêt;
10. conditions de remontée vers le parent.

États normatifs : `planned`, `ready`, `inProgress`, `blocked`, `verified`, `rejected`. Un parent n'est `verified` que si ses critères propres et tous les enfants obligatoires sont vérifiés. « Non testé » n'est pas « réussi ».

## 4. Gouvernance et Protecteur IA

Chaîne : **Identité → Autorisation → Politique → Impact → Evolution Gate → Exécution → Vérification → Audit → Rollback**.

- Le système propose et prépare; les permissions explicites bornent son exécution.
- Les changements de gouvernance, actions irréversibles et risques critiques requièrent approbation humaine.
- Décision de gate et exécution effective sont séparées.
- Refus par défaut si identité, permission, preuve ou dépendance est manquante.
- Toute mutation a un diff, un motif, un journal et une stratégie de récupération.
- Un hash seul n'authentifie pas l'auteur. L'ancre anti-rollback doit être protégée hors du domaine de confiance du registre.

## 5. Arbre global de travail

### G0 — Gouvernance, identité et sécurité
Rôles, matrice acteur/action/périmètre/risque, séparation des fonctions, révocation, audit, approbation et rollback.

### G1 — DTR Core
Primitives, cycle d'événement, machine d'état, invariants, transactions, sérialisation, migrations et reprise après panne.

### G2 — Données et mémoire
Journal d'événements, état projeté, métadonnées durables, cache, provenance, rétention, export/import, minimisation et accès.

### G3 — Moteur fractal
Décomposition finie, graphe de dépendances, planification, budgets, idempotence, vérification par critère, remontée d'état et arrêt explicite.

### G4 — Truth Engine / recherche
Séparer observation, source, inférence, hypothèse, prédiction et décision. Rechercher contre-exemples et explications concurrentes; dater les sources et conserver les résultats négatifs.

### G5 — Value Engine
Mesurer bénéfices, coûts, risques, horizon et incertitude. Un score agrégé ne peut pas neutraliser une contrainte de sécurité, un droit fondamental ou une autorisation obligatoire.

### G6 — Evolution Engine / Evolution Gate
Toute proposition fournit diff, justification, périmètre, risques, tests et rollback. Bloquer si les contrôles échouent; enregistrer les versions et preuves. L'auto-évolution reste vérifiable, auditable et réversible.

### G7 — Interface native iPad
Dashboard, arbre fractal, tâches prêtes/bloquées, inspection des preuves, commandes réelles lancer/suspendre/approuver/refuser/rollback, accessibilité, persistance et mode hors ligne défini.

### G8 — Interopérabilité et exploitation
Contrats versionnés, secrets hors code, journaux structurés, métriques, sauvegarde, restauration, mises à jour et diagnostic.

### G9 — QATOM / recherche scientifique
Définitions mathématiques, variables/unités, domaine de validité, prédictions quantitatives, comparaison aux modèles établis, protocole reproductible, données indépendantes et critères de réfutation. Une analogie ou un test logiciel ne prouve pas une théorie physique.

### G10 — Qualité et livraison
Tests unitaires, invariants, intégration, sécurité, régression, exécution réelle sur iPad, versionnement, manifeste de livraison et provenance.

### G11 — Documentation et mémoire
Décisions, architecture, registre d'hypothèses, risques, résultats, changements, procédures de reprise et statut des preuves.

## 6. Portes de validation

- **G1 Core** : tests/invariants logiciels réussis dans l'environnement indiqué.
- **G2 iPad** : compilation et exécution sur iPadOS/Swift Playgrounds réellement observées.
- **G3 Sécurité** : modèle de menace, permissions, secrets, ancre anti-rollback et revue indépendante.
- **G4 Gouvernance** : contrôles UI reliés à des politiques effectives et à l'autorité désignée.
- **G5 Science** : prédictions falsifiables et données évaluées affirmation par affirmation.
- **G6 Intégration** : code, documentation, version, tests, provenance et reprise vérifiés ensemble.

Statuts : `PASS`, `PARTIAL`, `BLOCKED`, `FAIL`, `NOT_ASSESSED`. Chaque statut exige une preuve et un environnement. Un test Linux ne prouve pas la compatibilité iPadOS.

## 7. Priorités d'exécution

1. **P0 — Dépôt source de vérité** : publier code, tests, spécifications, README et historique dans `lmcdduc/DTRCoreStarter2`; vérifier le commit distant.
2. **P0 — Reproductibilité** : relancer tests/build sur la copie publiée; consigner commandes, environnement, résultats et empreintes.
3. **P1 — Démo iPad** : vérifier l'intégration Swift Playgrounds et tester sur appareil réel.
4. **P1 — Gouvernance UI** : relier les boutons à des politiques exécutables; aucun contrôle décoratif.
5. **P1 — Sécurité** : frontière de confiance, signatures, clés, ancre indépendante, restauration et rollback.
6. **P2 — Moteur fractal** : exécution bornée, graphe, budgets, idempotence, arrêts et audit par tâche.
7. **P2 — Données** : journal, projections, migrations, export/import, corruption et confidentialité.
8. **P2 — Truth Engine** : registre d'affirmations, sources, dates, contre-arguments et incertitude.
9. **P3 — QATOM** : isoler les postulats, dériver des prédictions, comparer au modèle standard et définir les réfutations possibles.
10. **P3 — Release candidate** : tests bout en bout, échecs simulés, récupération, revue externe et paquet reproductible.

## 8. Registre de risques initial

| ID | Risque | Contrôle | État initial |
|---|---|---|---|
| R-01 | Dépôt distant vide / publication refusée | Publication puis vérification du commit/tree | BLOQUÉ |
| R-02 | Confusion tests Linux / iPadOS | Porte appareil distincte | OUVERT |
| R-03 | Hash pris pour une signature | Signature + ancre indépendante | À vérifier |
| R-04 | Autorité simulée par l'interface | Politique réelle et test de refus | À vérifier |
| R-05 | Hypothèse présentée comme fait scientifique | Registre, unités, prédictions, réfutation | OUVERT |
| R-06 | Récursion sans borne | Profondeur, budget, délai et stop conditions | À vérifier |
| R-07 | Échec silencieux de persistance | Transactions et tests de panne | À vérifier |

## 9. Critère de fin du macrocycle

Clôturer seulement si les livrables sont dans le dépôt cible, le commit est vérifié à distance, les tests sont reproductibles, chaque porte est évaluée avec preuves, les blocages ont un responsable/priorité et la mémoire est mise à jour. Toute preuve absente maintient `BLOCKED` ou `NOT_ASSESSED`.

## 10. Discipline de recherche

Pour chaque question : formuler l'hypothèse; définir les termes; rechercher sources primaires et contre-exemples; comparer aux modèles concurrents; noter dates et limites; séparer faits cités et inférences; produire une décision et un prochain test. Les affirmations QATOM demeurent des hypothèses tant qu'elles ne produisent pas de prédictions quantitatives confirmées par des données indépendantes.
