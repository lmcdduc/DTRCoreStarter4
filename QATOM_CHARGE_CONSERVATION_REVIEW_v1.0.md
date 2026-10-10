# QATOM — Revue ciblée de la charge électrique v1.0

Date: 2026-10-10  
Statut: audit de cohérence initial; aucune validation physique de QATOM.

## 1. Question examinée

Peut-on conserver les affectations de charge actuellement formulées dans les notes QATOM et les traiter comme compatibles avec les mesures établies?

Affectations attribuées au modèle dans les notes de projet:
- « quark libre / photon »: charge positive;
- proton: charge négative;
- neutrino, neutron et H: charge nulle;
- muon et H+: charge positive.

Ces propositions sont conservées ici comme **hypothèses attribuées à QATOM**, pas comme propriétés mesurées.

## 2. Comparaison avec les références établies

| Objet physique | Charge de référence | Affectation QATOM actuelle | Évaluation initiale |
|---|---:|---:|---|
| Photon γ | compatible avec zéro; limites expérimentales extrêmement faibles | positive, si « photon » est littéral | Contradiction directe si charge positive non nulle est prédite |
| Proton p | +1 e | −1 e | Contradiction de signe |
| Neutron n | 0 e | 0 e | Compatible sur cette seule propriété |
| Neutrino ν | compatible avec zéro dans les limites expérimentales | 0 e | Compatible sur cette seule propriété |
| Muon μ− | −1 e; l'antimuon μ+ porte +1 e | « muon » positif sans distinction de particule/antiparticule | Ambiguïté ou contradiction si cela désigne μ− |
| Atome d’hydrogène neutre H | 0 e | 0 e | Compatible sur cette seule propriété |
| Ion hydrogène H+ | +1 e | +1 e | Compatible sur cette seule propriété |

Références de comparaison consultées le 2026-10-10 : Particle Data Group, *Review of Particle Physics* (édition 2026), https://pdg.lbl.gov/ et https://pdg.lbl.gov/2026/api/index.html ; tableau des propriétés PDG 2024, https://pdg.lbl.gov/2024/download/db2024.pdf ; CERN, présentation du Modèle standard en français, https://home.cern/fr/science/physics/standard-model/ . Le tableau PDG 2024 donne des limites de charge du photon de l'ordre de 10^-46 e ou 10^-35 e selon l'interprétation considérée. Ce sont des bornes expérimentales, pas une mesure d'une charge positive non nulle. Avant de figer une tolérance numérique, extraire la fiche précise et les hypothèses expérimentales pertinentes.

## 3. Conclusion logique

Les affectations QATOM de charge positive au photon et négative au proton **ne reproduisent pas les charges observées** si les symboles désignent respectivement le photon connu et le proton connu. Ce n'est pas un détail cosmétique: le signe et la conservation de la charge sont des contraintes quantitatives.

Deux voies restent scientifiquement distinctes:
1. **Révision du modèle**: les valeurs QATOM désignent une grandeur interne différente de la charge électrique mesurée. Il faut alors nommer cette grandeur autrement, définir ses unités et fournir une fonction mesurable qui retrouve les charges observées.
2. **Nouvelle physique testable**: QATOM prédit réellement une charge électrique différente. Il faut fournir un protocole reproductible, une prédiction quantitative, une incertitude, les contraintes existantes et une signature expérimentale qui distinguerait QATOM. La simple redéfinition des mots « photon » ou « proton » ne constitue pas une prédiction.

## 4. Formulation minimale de conservation

Pour toute transition autorisée \(i\), définir les charges mesurables en unités de la charge élémentaire \(e\):

\[
Q_{\mathrm{initial}}/e=\sum_{a\in I} q_a,\qquad
Q_{\mathrm{final}}/e=\sum_{b\in F} q_b
\]

La contrainte de conservation testée est:

\[
\Delta Q/e=Q_{\mathrm{final}}/e-Q_{\mathrm{initial}}/e=0.
\]

Chaque proposition doit préciser la particule ou antiparticule exacte, l'état initial/final, les nombres de particules, les unités, et les éventuelles particules émises. Une réaction qui échoue à cette égalité est rejetée sous les règles actuelles.

## 5. Contrat du validateur logiciel

Le validateur logiciel est uniquement arithmétique. Il rejette les entrées non finies, les étiquettes vides, les multiplicités nulles/négatives, les états vides, les tolérances invalides et les sommes qui débordent. Une entrée invalide échoue fermée (`inputValid = false`, `conserved = false`). Une égalité arithmétique ne prouve pas que les charges saisies correspondent aux particules réelles.

## 6. Statut de H-QATOM-002

- Statut: `CONTRADICTED` pour les affectations littérales photon = charge positive et proton = charge négative, au regard des propriétés de référence.
- Statut global de la théorie: `UNRESOLVED`; ce test ne valide ni ne réfute toutes les composantes de QATOM.
- Étape suivante: clarifier si « charge » est la charge électrique observable ou une variable interne distincte; puis construire un validateur de conservation pour les transitions QATOM proposées.
