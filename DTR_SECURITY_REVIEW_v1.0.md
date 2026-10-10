# DTR Core — Revue de sécurité ciblée v1.0

Date: 2026-10-10  
Portée: revue de code documentaire et des tests disponibles; pas un audit indépendant ni une certification.

## Résultats positifs observés

- Le noyau sépare maintenant la cible bibliothèque `DTRCore` de l'exécutable `DTRCoreDemo`.
- La suite teste refus d'autorisation, transitions invalides, échec de persistance, idempotence, replay, incohérences de journaux, checkpoints, révocation et validation de signatures avec doubles de test.
- Les tests existants refusent plusieurs cas d'altération/incohérence au lieu de prétendre réparer silencieusement les preuves.
- La nouvelle façade `DTRAppSession` expose à l'UI un instantané de lecture et des actions de démonstration en mémoire seulement.

## Risques ouverts (bloquants avant usage en production)

1. **API publique limitée**: la façade est un adaptateur de démonstration, pas une API de gouvernance/production complète.
2. **Persistance de la façade**: `DTRAppSession` crée `DTRCore()` en mémoire; les données sont perdues à la fermeture.
3. **Ancre externe**: un hash SHA-256 n'est pas une signature; si l'attaquant peut remplacer le journal et l'ancre ensemble, l'historique n'est pas authentifié.
4. **Custodie des clés**: l'intégration d'une vraie clé, son stockage protégé, sa rotation et sa révocation sur appareil restent à valider.
5. **Concurrence et processus multiples**: les tests de sérialisation du cœur ne prouvent pas la sécurité de plusieurs processus/appareils partageant le même stockage.
6. **Crash/fault injection**: prévoir interruption entre chaque écriture, disque plein, corruption partielle, restauration et migration de version.
7. **Surface SwiftUI**: la nouvelle UI n'a pas été compilée sur l'iPad réel et n'est pas automatiquement connectée à la bibliothèque.
8. **Revue indépendante**: aucune revue indépendante n'a été réalisée dans cette séquence.

## Règles de conception

- Le fournisseur IA peut proposer; il ne peut pas s'accorder d'autorité.
- L'UI ne doit jamais présenter un état simulé comme autorisation réelle.
- Échec d'écriture = mutation refusée; ne pas annoncer de persistance réussie si elle n'a pas eu lieu.
- Ancre et clé de confiance doivent être protégées hors du même domaine d'administration que les journaux.
- Aucun secret ou clé privée dans le code source, les journaux ou captures d'écran.
- Toute réparation/récupération doit être explicite, auditable et réversible; ne jamais écraser silencieusement l'original.

## Porte de sortie sécurité

`G3 SECURE TRUST` reste `BLOCKED` tant que l'ancre indépendante, la vraie signature/custodie de clés, les tests de panne sur cible et une revue indépendante ne sont pas terminés.
