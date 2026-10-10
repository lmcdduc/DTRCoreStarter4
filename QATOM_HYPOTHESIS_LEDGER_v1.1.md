# QATOM — Hypothesis Ledger v1.1

Date: 2026-10-09
Status: exploratory; not validated physics.

## Purpose and evidence policy

This ledger is a research-control instrument, not evidence that QATOM is correct. Every claim must be labelled as one of: `HYPOTHESIS`, `DERIVATION`, `MEASURED`, `REPRODUCED`, `CONTRADICTED`, or `UNRESOLVED`. A claim cannot be promoted because it is aesthetically coherent, fractal, or compatible with one selected example.

Reference frame: the CERN description of the Standard Model and the Particle Data Group's Review of Particle Physics provide comparison baselines for known particles and measured properties. They are not sources validating QATOM. See https://home.cern.ch/science/physics/standard-model/ and https://pdg.lbl.gov/.

## H-QATOM-001 — Quart count determines particle/atom identity

- **Status:** HYPOTHESIS; definitions not yet operationally complete.
- **Claim to formalize:** a discrete count/arrangement of proposed `quarts` maps to a unique observable state.
- **Missing definitions:** exact physical meaning of a quart; measurable state variables; whether the count is conserved; mapping from geometry to quantum numbers; allowed configurations; energy scale; units.
- **Required equation:** define a state map `F(configuration, environment) -> (mass, charge, spin, lifetime, interaction signatures)` and specify its domain/codomain. No mapping is accepted until each output is quantitative.
- **Prediction needed:** at least one numerical property or previously unreported transition rate, with uncertainty, that differs from the Standard Model prediction and is measurable.
- **Falsification condition:** reject or revise the mapping if it predicts an already measured mass, charge, spin, lifetime, or cross-section outside experimental uncertainty, or if a unique state mapping fails for two distinct configurations with indistinguishable proposed observables.
- **Next action:** select one target particle/system and complete the variable/unit table before further geometry expansion.

## H-QATOM-002 — Charge emerges from configuration and environment

- **Status:** HYPOTHESIS; charge assignments in the current model are not established facts.
- **Required constraints:** reproduce charge conservation in every proposed reaction; use measured charge in units of the elementary charge; account for particle/antiparticle distinctions and gauge-interaction constraints.
- **Prediction needed:** an explicit reaction with initial/final charges and a measurable outcome that is not a restatement of charge conservation.
- **Falsification condition:** any allowed QATOM transition that violates measured electric-charge conservation falsifies that transition rule.
- **Next action:** make a transition table and automatically calculate total initial/final charge for every reaction proposal.

## H-QATOM-003 — Spin geometry produces magnetic response

- **Status:** HYPOTHESIS; classical geometric analogy alone is insufficient.
- **Required definitions:** spin observable, angular momentum units, magnetic moment, coupling to external field, energy density variable and its units, and relation to known relativistic quantum theory.
- **Prediction needed:** a quantitative magnetic moment or field-dependent energy splitting with uncertainty.
- **Falsification condition:** reject the proposed law if it conflicts with precision magnetic-moment or spin measurements beyond stated uncertainty.
- **Next action:** choose a single system, state its baseline measured magnetic moment, then derive a formula before fitting parameters.

## H-QATOM-004 — Local time or effective propagation speed varies with state

- **Status:** HYPOTHESIS; high risk of ambiguity.
- **Required definitions:** operational clock, coordinate choice, invariant observable, definition and units of `V_eff`, and distinction between coordinate effects and measurable deviations from relativity.
- **Prediction needed:** a specified observable timing or propagation deviation under a reproducible condition.
- **Falsification condition:** reject the version that predicts deviations excluded by precision tests; revise only with a new independently testable equation, not post hoc wording.
- **Next action:** define an experiment and compare it with established relativistic and quantum predictions.

## Required record for every future hypothesis

1. Stable ID and version.
2. Exact statement and scope.
3. Definitions, symbols, SI units, assumptions, and boundary conditions.
4. Derivation with every step reproducible.
5. Baseline theory and authoritative data source.
6. Numerical prediction and uncertainty interval fixed before examining the target data.
7. Dataset/experiment, calibration, error model, and analysis procedure.
8. Falsification criterion and decision rule.
9. Result: measured, reproduced, contradicted, or unresolved.
10. Reviewer, date, code/data hashes, and change history.

## Prohibited inference shortcuts

- A visual analogy is not a derivation.
- A fit to one known datum is not independent confirmation.
- A nonstandard label does not redefine measured particle properties.
- A software test validates software behavior only; it does not validate physical theory.
- If a prediction is made after seeing the data, label it exploratory and test it on independent data.
