import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.SpacetimeCurvature

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure MatterEnergyMomentumPackage {G : SpacetimeCurvaturePackage} where
  matterFields : Type u
  energyMomentumTensor : Type v
  stressEnergyTrace : Type w
  matterEquations : Prop
  energyConditions : Prop
  dominantEnergyCondition : Prop
  strongEnergyCondition : Prop

structure MatterEnergyMomentumEvidence {G : SpacetimeCurvaturePackage}
    (T : MatterEnergyMomentumPackage G) where
  matterEquationsClosed : T.matterEquations
  energyConditionsClosed : T.energyConditions
  dominantEnergyConditionClosed : T.dominantEnergyCondition
  strongEnergyConditionClosed : T.strongEnergyCondition

def MatterEnergyMomentumClosed {G : SpacetimeCurvaturePackage}
    (T : MatterEnergyMomentumPackage G) : Prop :=
  T.matterEquations ∧
  T.energyConditions ∧
  T.dominantEnergyCondition ∧
  T.strongEnergyCondition

theorem matter_energy_momentum_closed_from_evidence
    {G : SpacetimeCurvaturePackage} (T : MatterEnergyMomentumPackage G)
    (E : MatterEnergyMomentumEvidence T) : MatterEnergyMomentumClosed T := by
  exact And.intro E.matterEquationsClosed
    (And.intro E.energyConditionsClosed
      (And.intro E.dominantEnergyConditionClosed E.strongEnergyConditionClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse