# Plan de tests d'intégration — DTR Core / Swift Playgrounds

Date: 2026-10-10

## Portée

Valider séparément la bibliothèque Swift, l'adaptateur d'application, l'interface SwiftUI sur iPadOS et le comportement persistant/sécurisé. Les tests Linux ne remplacent pas les tests de plateforme Apple.

## Préconditions

- Dupliquer le projet Swift Playgrounds avant toute modification.
- Ajouter `DTRCore` depuis un dépôt Git accessible, puis sélectionner une version ou un tag immuable.
- Garder `@main` et les fichiers d'entrée générés par Playgrounds inchangés.
- Ne connecter aucune clé réelle, aucun compte de production et aucune autorité réelle au prototype.

## Tests à exécuter sur iPad

| ID | Action | Résultat attendu | Preuve à conserver |
|---|---|---|---|
| IPAD-01 | Ouvrir l'application sauvegardée | Compilation et lancement sans erreur | Capture d'écran + version iPadOS |
| IPAD-02 | Ouvrir les cinq onglets | Aucun écran vide/crash | Capture de chaque onglet |
| IPAD-03 | Avancer dans le cycle jusqu'à Mémoire | L'étape et le journal local évoluent de façon déterministe | Capture début/fin |
| IPAD-04 | Avancer au-delà de la dernière étape | Aucun dépassement; message de fin | Capture de l'état terminal |
| IPAD-05 | Réinitialiser | Étape 1, Gate désactivé, journal réinitialisé | Capture après reset |
| IPAD-06 | Basculer Gate simulation ON/OFF | Texte indique toujours qu'aucune autorisation réelle n'est accordée | Capture ON/OFF |
| IPAD-07 | Fermer puis relancer | L'utilisateur voit que le journal est volatile; aucune persistance implicite promise | Observation consignée |
| IPAD-08 | Mode paysage/portrait et taille de texte augmentée | Contrôles accessibles, aucune coupe critique | Captures des deux orientations |
| IPAD-09 | Vérifier le compteur de tests affiché | Étiquette correspond au dernier résultat de test connu; ne pas l'interpréter comme test appareil | Capture + journal de tests |
| IPAD-10 | Tester sans réseau | Prototype local reste utilisable; dépendance SPM déjà résolue | Observation consignée |

## Tests d'intégration Core à ajouter avant d'activer des mutations

1. Injection de dépendances : l'UI reçoit un protocole de session, pas un singleton global.
2. Lecture seule par défaut : afficher un snapshot ne modifie ni état métier ni journal.
3. Mutation explicite : chaque commande possède un identifiant idempotent, acteur, autorité requise, risque et résultat.
4. Échec fermé : si audit/persistance/validation échoue, la mutation n'est pas présentée comme réussie.
5. Réouverture : relecture d'un journal durable et vérification de l'ancre externe avant d'afficher « vérifié ».
6. Rollback : autorisation explicite, préservation des preuves, test d'échec et procédure de reprise.

## Critères de sortie

- Aucun crash dans IPAD-01 à IPAD-10.
- Aucune divergence entre UI, état Core et audit.
- Aucune chaîne de démonstration présentée comme une preuve durable.
- Les captures et les versions sont archivées avec le résultat de chaque test.

Statut initial : `BLOCKED_DEVICE_TESTS_PENDING` — aucun résultat iPad n'est présumé avant exécution sur l'appareil.
