# Planification fractale globale v1.9

Date: 2026-10-10

## Priorité 1 — boucle de démonstration iPad

**État:** bibliothèque SPM et façade publique implémentées; intégration appareil bloquée par le dépôt distant et les tests sur iPad.

- P1.1 sauvegarder l'app qui fonctionne;
- P1.2 publier/autoriser le dépôt du paquet;
- P1.3 ajouter `DTRCore` comme dépendance dans Swift Playgrounds;
- P1.4 connecter l'UI à `DTRAppSession` uniquement pour la démonstration;
- P1.5 tester navigation, création, transition, réinitialisation, fermeture et reprise;
- P1.6 marquer `DEVICE_VERIFIED` seulement sur confirmation réelle.

## Priorité 2 — intégrité et confiance

**État:** tests de régression Linux réussis; production bloquée.

- P2.1 définir la menace et les domaines d'administration;
- P2.2 définir custodie, rotation et révocation des clés;
- P2.3 signer et vérifier l'ancre avec une clé de production;
- P2.4 stocker l'ancre indépendamment du journal;
- P2.5 injecter crash, disque plein, écritures partielles et altérations;
- P2.6 faire une revue indépendante.

## Priorité 3 — falsifiabilité QATOM

**État:** validateur arithmétique ajouté; revue initiale détecte contradiction de certaines affectations de charge.

- P3.1 préciser charge électrique mesurée vs variable interne QATOM;
- P3.2 formaliser particules et antiparticules et leurs unités;
- P3.3 définir les réactions initiales/finales et valider conservation;
- P3.4 comparer à PDG/CERN;
- P3.5 choisir ensuite une prédiction quantitative indépendante pour le spin ou la propagation.

## Règle d'avancement récursif

À chaque cycle: inventorier → découper → attribuer l'autorité → définir invariants → implémenter → tester → enregistrer preuve → examiner le risque → mettre à jour la feuille de route → choisir le prochain enfant prioritaire.

Aucune étape de haut risque, d'autorité réelle, de publication externe ou de manipulation de clé ne s'effectue sans permission explicite dédiée.
