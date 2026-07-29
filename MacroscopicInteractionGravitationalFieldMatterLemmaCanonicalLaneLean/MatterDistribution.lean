import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure MatterDistributionPackage where
  matterDensityField : Type u
  pressureField : Type v
  equationOfState : Prop
  conservationLawHeld : Prop
  energyMomentumTensorDefined : Prop

structure MatterDistributionEvidence (M : MatterDistributionPackage) where
  equationOfStateClosed : M.equationOfState
  conservationLawHeldClosed : M.conservationLawHeld
  energyMomentumTensorDefinedClosed : M.energyMomentumTensorDefined

def MatterDistributionClosed (M : MatterDistributionPackage) : Prop :=
  M.equationOfState ∧ M.conservationLawHeld ∧ M.energyMomentumTensorDefined

theorem matter_distribution_closed_from_evidence (M : MatterDistributionPackage) (E : MatterDistributionEvidence M) :
    MatterDistributionClosed M := by
  exact And.intro E.equationOfStateClosed
    (And.intro E.conservationLawHeldClosed E.energyMomentumTensorDefinedClosed)

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse