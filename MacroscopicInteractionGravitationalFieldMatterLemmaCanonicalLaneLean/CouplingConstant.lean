import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.MatterEnergyMomentum

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure CouplingConstantPackage {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} where
  gravitationalConstant : ℝ
  cosmologicalConstant : ℝ
  couplingStrength : Prop
  constantSignDefined : Prop
  unitsConsistent : Prop

structure CouplingConstantEvidence {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} (C : CouplingConstantPackage G T) where
  couplingStrengthClosed : C.couplingStrength
  constantSignDefinedClosed : C.constantSignDefined
  unitsConsistentClosed : C.unitsConsistent

def CouplingConstantClosed {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} (C : CouplingConstantPackage G T) : Prop :=
  C.couplingStrength ∧ C.constantSignDefined ∧ C.unitsConsistent

theorem coupling_constant_closed_from_evidence
    {G : SpacetimeCurvaturePackage} {T : MatterEnergyMomentumPackage G}
    (C : CouplingConstantPackage G T) (E : CouplingConstantEvidence C) :
    CouplingConstantClosed C := by
  exact And.intro E.couplingStrengthClosed
    (And.intro E.constantSignDefinedClosed E.unitsConsistentClosed)

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse