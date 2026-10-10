# OpenAI × architecture ouverte × DTR — contrat v1.3

## Règle de séparation
Le modèle génère une proposition. Le contrat valide le format et les contraintes de domaine. Les moteurs DTR évaluent preuves, valeur et risques. L'autorité habilitée et l'Evolution Gate décident si une action est autorisée. Aucun résultat de modèle ne constitue une autorisation.

## Contrat `dtr.proposal.v1`
- `schemaVersion`: doit être `dtr.proposal.v1`.
- `proposalID`, `summary`, `rationale`: chaînes non vides.
- `requestedActions`: au plus 32 chaînes non vides.
- `riskLevel`: `low`, `moderate`, `high` ou `critical`.

Le validateur Swift actuel décode le modèle typé et vérifie ces contraintes. Il ne rejette pas encore explicitement les clés JSON inconnues et n'est pas un moteur JSON Schema complet.

## Fournisseur et sécurité
Le contrat `AIProvider` est neutre vis-à-vis du fournisseur. `FakeAIProvider` et `CountingAIProvider` sont destinés aux tests hors ligne. Aucune intégration réseau OpenAI n'est activée dans cette version. Lors de l'ajout d'un adaptateur réel, les clés API restent sur un serveur de confiance, jamais dans l'application iPad. Les traces doivent éviter les données sensibles et être soumises à une politique de rétention.

## Idempotence
`IdempotentAIProvider` déduplique les appels de même clé et même charge utile à l'intérieur d'un processus. Ce cache n'est ni durable ni partagé entre serveurs.

## Vérification
Swift 6.2.1 / Linux x86_64 : 95 tests réussis. La démo réussit et refuse un rollback non autorisé. Le test ne démontre pas la compatibilité iPadOS, la sécurité de production, l'accès réseau réel ou la validité scientifique de QATOM.
