import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure GravitationalFieldMatterInteraction where
  fieldDensity : Prop
  matterDistribution : Prop
  interactionPotential : Prop
  fieldEquations : Prop

structure GravitationalFieldMatterEvidence (I : GravitationalFieldMatterInteraction) where
  fieldDensityClosed : I.fieldDensity
  matterDistributionClosed : I.matterDistribution
  interactionPotentialClosed : I.interactionPotential
  fieldEquationsClosed : I.fieldEquations

def GravitationalFieldMatterClosed (I : GravitationalFieldMatterInteraction) : Prop :=
  I.fieldDensity ∧ I.matterDistribution ∧ I.interactionPotential ∧ I.fieldEquations

theorem gravitational_field_matter_closed_from_evidence
    (I : GravitationalFieldMatterInteraction) (E : GravitationalFieldMatterEvidence I) :
    GravitationalFieldMatterClosed I := by
  exact And.intro E.fieldDensityClosed
    (And.intro E.matterDistributionClosed
      (And.intro E.interactionPotentialClosed E.fieldEquationsClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse