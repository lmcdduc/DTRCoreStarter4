# DTR Core Starter v3.6

## Vérification

- `swift test` — 112 tests réussis, 0 échec dans Swift 6.2.1 sur Linux x86_64.
- `swift run DTRCoreDemo` — scénario de démonstration exécuté avec succès.

## Nouveau dans v3.6

`JournalPairInspector.assess(eventURL:auditURL:)` diagnostique une paire de journaux sans la modifier. Il distingue les journaux cohérents, les journaux en avance, les journaux invalides et les enregistrements non concordants. Toute anomalie requiert une intervention explicite.

## Limites

Le diagnostic n'effectue aucune récupération. Les deux fichiers ne sont pas atomiques, le checkpoint externe protégé reste à construire, la cryptographie de référence n'est pas une primitive de production et aucun test iPadOS réel ni appel live à OpenAI n'a été exécuté. QATOM reste une piste hypothétique non validée.
