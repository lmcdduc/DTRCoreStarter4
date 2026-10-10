# Modèle « du tout au rien » — Spécification fractale globale

**Version :** 1.3  
**Date :** 2026-10-09  
**Statut :** spécification de travail; implémentation incrémentale vérifiée par tests; distinctions explicites entre implémenté, proposé et non validé.

## 1. Règle récursive universelle

Toute unité du système est un `WorkItem` et doit déclarer :

1. identifiant stable et parent;
2. objectif mesurable et périmètre;
3. entrées, sorties et dépendances;
4. état et transitions autorisées;
5. critères d'acceptation vérifiables;
6. preuves traçables, versionnées et datées;
7. autorité et niveau de risque;
8. journal d'événements et résultat d'audit;
9. stratégie de récupération ou justification explicite de non-réversibilité;
10. conditions d'arrêt, de décomposition et de remontée au parent.

Le même contrat s'applique au système global, à chaque sous-système, à chaque tâche et à chaque sous-tâche. La récursion est bornée par budget de nœuds, profondeur maximale, délai et coût. Une décomposition infinie n'est jamais autorisée.

## 2. Arbre global de travail

### G0 — Gouvernance et identité
- G0.1 Autorités : utilisateur, opérateur, agent local, système central, Conseil ESC.
- G0.2 Matrice acteur × action × périmètre × risque.
- G0.3 Approbation humaine des changements de gouvernance et des opérations critiques.
- G0.4 Protection : identité → autorisation → politique → impact → gate → exécution → vérification → audit → rollback.
- G0.5 Tests : refus par défaut, permissions minimales, révocation, journal d'accès, approbation signée.

### G1 — DTR Core
- G1.1 Primitives : Objet, Lien, État, Transformation, Règle.
- G1.2 Cycle : Objet → État → Événement → Transition → Décision → Autorité → Audit → Mémoire.
- G1.3 Invariants : identifiants uniques, versions monotones, références cohérentes, transitions explicites.
- G1.4 Transactions : validation avant mutation; échec de persistance = pas de succès déclaré.
- G1.5 Récupération : journal rejouable, snapshots cohérents, migration de schéma et stratégie de corruption.

### G2 — Mémoire et données
- G2.1 Distinguer événement immuable, état courant, métadonnée durable et cache temporaire.
- G2.2 Provenance : auteur, source, date, version, méthode, empreinte de contenu lorsque pertinent.
- G2.3 Conservation : durée, propriétaire, finalité, dépendances actives, politique de purge.
- G2.4 Résilience : interruption, écriture partielle, doublon, journal corrompu, restauration et export.
- G2.5 Confidentialité : minimisation, contrôle d'accès, chiffrement au repos/en transit si déployé.

### G3 — Moteur fractal
- G3.1 Décomposition orientée objectif, avec nombre de niveaux borné.
- G3.2 Graphe de dépendances acyclique; références inconnues rejetées.
- G3.3 Planification : seules les tâches dont les dépendances sont vérifiées deviennent prêtes.
- G3.4 Vérification : chaque critère requiert une preuve liée au critère, pas une note générique.
- G3.5 Remontée : un parent ne passe à « vérifié » qu'après critères propres + enfants requis vérifiés.
- G3.6 Boucle d'amélioration : écart → hypothèse → modification isolée → test → gate → audit.
- G3.7 Arrêt : objectif atteint, budget dépassé, incertitude non résolue, dépendance bloquée ou autorisation manquante.

### G4 — Truth Engine
- G4.1 Séparer observation, source, interprétation, hypothèse et décision.
- G4.2 Qualifier les affirmations : vérifiées, réfutées, plausibles, inconnues, contradictoires.
- G4.3 Traçabilité de chaque affirmation vers une preuve datée.
- G4.4 Recherche de contre-exemples et d'explications concurrentes.
- G4.5 Interdiction de convertir l'absence de preuve en preuve d'absence.

### G5 — Value Engine
- G5.1 Valeur attendue = bénéfice mesurable − coûts − risques pondérés.
- G5.2 Déclarer unités, horizon temporel, hypothèses, incertitude et sensibilité.
- G5.3 Ne pas laisser un score agrégé annuler une contrainte de sécurité ou un droit fondamental.
- G5.4 Mesurer résultats réels après déploiement; comparer prévision et observation.

### G6 — Evolution Engine / Evolution Gate
- G6.1 Toute proposition contient diff, motif, périmètre, risques, tests et plan de retour arrière.
- G6.2 Refuser si identité ou permissions non prouvées, tests échoués, valeur invalide ou preuves manquantes.
- G6.3 Exiger une approbation humaine pour gouvernance, risque critique ou changement non réversible.
- G6.4 Séparer décision de gate et exécution effective; aucune réussite avant résultat confirmé.
- G6.5 Enregistrer version avant/après, approbateur, preuves et résultat.

### G7 — Interface native iPad
- G7.1 Tableau de bord : état global, tâches prêtes/bloquées, risques, tests, versions.
- G7.2 Exploration de l'arbre fractal et inspection de chaque preuve.
- G7.3 Actions explicites : lancer, suspendre, approuver, refuser, revenir en arrière.
- G7.4 Confirmation des actions destructrices; aucun bouton décoratif ou sans effet.
- G7.5 Accessibilité, fonctionnement hors ligne défini, export/import et tests sur appareil réel.

### G8 — Interopérabilité et exploitation
- G8.1 Contrats d'API et formats versionnés.
- G8.2 Gestion des secrets hors du code source.
- G8.3 Journaux structurés, métriques, alertes et diagnostics.
- G8.4 Sauvegarde, restauration, mises à jour et compatibilité.
- G8.5 Revue sécurité et test de récupération avant toute utilisation réelle.

### G9 — QATOM / DTR scientifique
- G9.1 Définir les objets mathématiques, variables, unités, paramètres et domaines de validité.
- G9.2 Dériver une prédiction numérique avant d'examiner les données de test.
- G9.3 Identifier le modèle standard concurrent et la zone où les prédictions divergent.
- G9.4 Définir instrument, bruit, seuil de détection, analyse statistique et critères de réfutation.
- G9.5 Pré-enregistrer le protocole; utiliser données indépendantes; publier les résultats négatifs.
- G9.6 Ne pas présenter les analogies géométriques ou les correspondances numériques comme des preuves physiques sans dérivation et test.

## 3. Machine d'état normative des tâches

États proposés : `planned`, `ready`, `inProgress`, `blocked`, `verified`, `rejected`.

Transitions minimales :
- `planned → ready` si dépendances connues et vérifiées, autorisation présente et ressources disponibles;
- `ready → inProgress` après attribution et acceptation du périmètre;
- `inProgress → verified` seulement si chaque critère possède une preuve acceptable et si les contrôles sont passés;
- `inProgress → blocked` si dépendance, budget, preuve ou autorisation manque;
- `inProgress → rejected` si l'hypothèse ou le résultat échoue au critère;
- `blocked → ready` uniquement après résolution documentée du blocage;
- toute transition est journalisée avec acteur, horodatage, version et motif.

Un statut ne doit pas être déduit du titre ou d'une déclaration textuelle libre. Les preuves doivent être structurées et liées aux critères. Les changements de statut doivent être atomiques par rapport au journal durable.

## 4. Matrice de preuve et critères d'acceptation

| Domaine | Test d'acceptation | Preuve minimale | Limite actuelle |
|---|---|---|---|
| DTR Core | transitions illégales sans mutation | tests automatisés | noyau principalement en mémoire |
| Journal | séquence et schéma continus | replay et test de corruption | pas de verrouillage multi-processus ni de signature inviolable |
| Fractale | aucun cycle, dépendance connue | tests du graphe | décomposition proposée par l'appelant, pas générée automatiquement |
| Gate | refus en cas de préconditions manquantes | tests de politiques | identité/permission simulées par booléens dans le prototype |
| iPad | parcours utilisateur complet sur appareil | test SwiftUI sur iPad réel | non validé sur appareil |
| Truth Engine | affirmation reliée à source et contre-test | registre de preuves auditable | moteur complet non implémenté |
| Value Engine | unités et analyse de sensibilité explicites | calcul reproductible | modèle de valeur non calibré |
| QATOM | prédiction quantitative qui diverge d'un modèle de référence | protocole et données indépendantes | hypothèses non validées par ce prototype logiciel |

## 5. Plan de validation scientifique QATOM

Chaque hypothèse doit être enregistrée sous la forme :

`H = (énoncé, mécanisme, équations, paramètres, unités, prédiction, modèle nul, données, seuil, réfutation)`.

### H1 — Déviation de la loi gravitationnelle à courte portée
- Préciser la forme fonctionnelle exacte, l'échelle et les paramètres libres.
- Comparer à la loi inverse du carré et aux contraintes expérimentales publiées.
- Calculer l'effet attendu et vérifier qu'il dépasse les incertitudes instrumentales.
- Réfutation : résultat dans l'intervalle du modèle nul à la précision annoncée.

### H2 — Topologie et signatures dans le fond diffus cosmologique
- Définir un invariant topologique observable et la statistique de détection.
- Construire des simulations avec et sans signature, incluant masques, bruit et biais instrumentaux.
- Comparer aux contraintes cosmologiques existantes et corriger les essais multiples.
- Réfutation : absence de pouvoir discriminant sur des données simulées ou indépendantes.

### H3 — « chaleur topologique » / friction stérique en collisions de particules
- Remplacer les termes qualitatifs par un observable défini, des unités et une relation quantitative.
- Comparer aux observables de QCD et aux simulations de référence.
- Prévoir les distributions et les incertitudes avant l'ajustement aux données.
- Réfutation : absence d'amélioration prédictive hors échantillon ou incompatibilité avec les mesures.

### H4 — Principe de Landauer et temps local
- Le coût minimal `k_B T ln 2` concerne l'effacement logique d'un bit dans les conditions pertinentes; il ne démontre pas à lui seul une théorie de temps local.
- Définir la variable de temps locale, l'opération physique et le lien mathématique supplémentaire proposé par QATOM.
- Réfutation : aucun effet additionnel mesurable ou équations équivalentes au modèle existant.

## 6. Registre des risques prioritaires

1. **Confusion conceptuelle** : analogie, hypothèse et résultat expérimental sont séparés dans tous les documents.
2. **Fausse sécurité** : des booléens de test ne valent pas authentification cryptographique.
3. **Perte ou incohérence de données** : ne pas annoncer de transaction fiable avant intégration atomique du journal et de l'état.
4. **Récursion incontrôlée** : budgets stricts et arrêt explicite.
5. **Preuve faible** : preuve structurée, provenance et lien direct à un critère.
6. **Automatisation excessive** : les décisions de gouvernance, les opérations critiques et les changements irréversibles restent soumis à l'autorité humaine.
7. **Validation prématurée de QATOM** : prédictions falsifiables et tests indépendants requis.

## 7. Définition de terminé

Un nœud est terminé uniquement si :
- son objectif et ses critères sont mesurables;
- ses dépendances et ses invariants passent;
- ses preuves sont traçables et propres à chaque critère;
- les tests automatisés et les tests d'intégration requis passent;
- l'autorité et le risque sont évalués;
- l'audit est enregistré;
- la récupération est testée ou l'absence de réversibilité explicitement approuvée;
- son parent confirme que les exigences globales sont satisfaites.

**État de cette version :** le document structure le programme. Il ne certifie pas que chaque sous-système existe. L'implémentation et la validation sont suivies séparément dans le registre de travail.


## 6. Mise à jour récursive 1.3 — état vérifié

### 6.1 Noyau + mémoire
Le contrat `DTRJournal` sépare le noyau de son support de persistance. En mode durable, un événement de mutation est écrit et synchronisé avant que la nouvelle représentation mémoire soit publiée. Une erreur d'écriture ne peut donc pas être retournée comme succès. Au redémarrage, les événements engagés sont rejoués pour reconstruire l'état.

**Limite restante :** le protocole est mono-processus et ne fournit pas encore de transaction filesystem complète, de verrou distribué, de preuve cryptographique d'intégrité ou de stratégie de récupération après écriture partielle.

### 6.2 Truth Engine
Le premier registre de claims est maintenant structuré : `observation`, `sourcedFact`, `inference`, `hypothesis`, `decision`. Une affirmation reste `unknown` sans preuve; des preuves opposées produisent `contradictory` au lieu de forcer une décision binaire. La provenance minimale contient source, type, date et localisateur.

### 6.3 Value Engine
Le calcul prototype sépare bénéfice, coût, risque et incertitude. Les garde-fous `safety`, `humanRights`, `legalObligation` et `governance` sont non compensables par une valeur numérique positive.

### 6.4 Conséquence architecturale
Le flux devient :

`Observer → Truth/Provenance → Diagnose → Decompose → Value/Risk → Gate → Commit → Execute → Verify → Audit → Memory → Remount`

Le `Gate` reste indépendant de l'exécuteur. La mémoire durable ne doit jamais être seulement un cache de l'interface.

### 6.5 Recherche externe intégrée
- **Gouvernance IA :** NIST AI RMF organise la gestion du risque autour de `Govern`, `Map`, `Measure`, `Manage`, avec `Govern` transversal et une gestion continue sur le cycle de vie.
- **Concurrence iPad :** Apple recommande Swift Concurrency/actors pour isoler l'état mutable et réduire les data races.
- **Persistance iPad :** SwiftData fournit stockage, schéma et migration; il est candidat pour la couche applicative, mais le journal d'événements reste nécessaire pour l'audit/replay du modèle DTR.
- **Physique :** le Modèle standard possède de solides fondements expérimentaux; une hypothèse QATOM doit donc être exprimée par une prédiction quantitative discriminante, et non par une analogie géométrique seule. Le principe de Landauer a été vérifié expérimentalement; toute extension « temps local » doit donc ajouter une prédiction mesurable au-delà de `k_B T ln 2`.

### 6.6 Règle de fermeture récursive
Un parent ne peut être déclaré `verified` par simple agrégation des enfants. Il doit satisfaire ses propres critères, disposer des preuves correspondantes, puis intégrer les résultats des enfants. Cette règle devient normative pour tous les moteurs futurs.

## 1.3 — Contrat d'autorisation et GateEvidence

Une autorisation de changement critique ne peut plus être représentée par un simple booléen. Le contrat minimal est :

`AuthorizationContext(actor, roles, action, resource, policyVersion, validityWindow, proofID)`

Le Gate exige également :

`GateEvidence = TruthVerified ∧ ValueExecutable ∧ TestsPassed ∧ RollbackEvidence ∧ AuthorizationProof`

La règle est **fail-closed** : preuve absente, expirée, réutilisée pour une autre action/ressource, ou liée à une autre version de politique → refus.

Les champs de compatibilité historique ne constituent pas une preuve de production.


## v3.3 — validation globale avant planification

Date : 2026-10-09

- `validateAllInvariants()` réunit la validation de l'arbre et du graphe de dépendances : racine unique, références parent/enfant cohérentes, profondeurs valides, dépendances connues et absence de cycles.
- `validatedReadyItems()` refuse de fournir des tâches planifiables tant que le graphe complet n'est pas valide. `readyItems()` est conservée pour compatibilité, mais reste un filtre non validant; aux frontières de confiance, utiliser `validatedReadyItems()`.
- Tests ajoutés : graphe valide accepté; dépendance inconnue rejetée; cycle rejeté avant planification; candidats admissibles triés de façon déterministe.
- Validation locale : **80/80 tests PASS** sous Swift 6.2.1 / Linux x86_64; `swift run DTRCoreDemo` PASS.

### Limites

La validation est appelée explicitement par l'API sûre de planification, pas automatiquement par chaque lecture ni par le décodage `Codable`. Tout chemin de restauration/export doit appeler `validateAllInvariants()`. Les opérations restent en mémoire; aucune transaction disque, exécution sur iPad réel ou validité scientifique de QATOM n'est démontrée.

### Prochaine récursion

1. `MEM-02.6` — injection de panne et récupération entre journal et état.
2. `DTR-01.6` — tests d'idempotence, isolation des écrivains et persistance partagée.
3. `SEC-04.7` — signatures cryptographiques réelles, rotation/révocation des clés via API de plateforme.
4. `UI-08.1` — dashboard SwiftUI en lecture seule et validation sur iPad physique.
5. `SCI-10.1` — hypothèse QATOM quantitative, prédiction falsifiable, incertitudes et données de référence.
