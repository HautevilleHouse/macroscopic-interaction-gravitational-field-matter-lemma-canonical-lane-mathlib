import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure MatterFieldPackage where
  fieldType : Type u
  lagrangianDensity : Type v
  eulerLagrangeEquations : Prop
  couplingConstant : ℝ
  minimalCouplingPrinciple : Prop

structure MatterFieldEvidence (M : MatterFieldPackage) where
  eulerLagrangeEquationsClosed : M.eulerLagrangeEquations
  minimalCouplingPrincipleClosed : M.minimalCouplingPrinciple

def MatterFieldClosed (M : MatterFieldPackage) : Prop :=
  M.eulerLagrangeEquations ∧ M.minimalCouplingPrinciple

theorem matter_field_closed_from_evidence
    (M : MatterFieldPackage) (E : MatterFieldEvidence M) :
    MatterFieldClosed M := by
  exact And.intro E.eulerLagrangeEquationsClosed E.minimalCouplingPrincipleClosed

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse
