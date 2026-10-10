# Intégration iPad — façade DTR Core v1.0

La cible bibliothèque `DTRCore` et la façade publique `DTRAppSession` sont maintenant séparées de l'exécutable CLI. Elles compilent dans le paquet Swift sous Linux et sont déclarées compatibles iOS 16+ dans le manifeste. Cela ne constitue pas encore une compilation iPadOS.

## Utilisation côté SwiftUI après ajout du paquet

```swift
import SwiftUI
import DTRCore

struct CoreAdapterExample: View {
    @State private var session = DTRAppSession()
    @State private var snapshot: DTRAppSnapshot?

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Cycle : \(snapshot?.lifecycle.rawValue ?? "Objet")")
            Text("État métier : \(snapshot?.objectStatus ?? "non créé")")
            Text("Événements : \(snapshot?.eventCount ?? 0)")
            Text(snapshot?.lastMessage ?? "Session de démonstration")
            Button("Avancer la démonstration") {
                snapshot = session.advanceDemoLifecycle()
            }
            Button("Créer un nouvel objet de démonstration") {
                snapshot = session.createDemoObject()
            }
        }
        .padding()
    }
}
```

## Limites importantes

- Ce code est un exemple d'adaptateur, pas un remplacement automatique de `ContentView.swift`.
- Le paquet doit être hébergé dans un dépôt Git accessible à Swift Playgrounds, puis ajouté comme dépendance; le dossier local seul n'est pas une dépendance SPM distante.
- L'adaptateur utilise un noyau en mémoire et des permissions de démonstration. Il ne doit pas commander d'action réelle, ne garantit pas la persistance, et n'implémente pas l'autorité ESC.
- Avant intégration, sauvegarder l'application qui fonctionne. Après intégration, tester sur iPad réel et rapporter toute erreur exacte.
