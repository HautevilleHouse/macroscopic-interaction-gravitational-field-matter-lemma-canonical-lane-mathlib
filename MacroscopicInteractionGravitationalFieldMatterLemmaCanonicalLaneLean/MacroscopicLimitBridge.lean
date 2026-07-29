import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.InteractionCouplingLemma

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure MacroscopicLimitBridge (I : InteractionCouplingPackage) where
  averagingProcedure : Prop
  macroscopicVariables : Prop
  limitEquation : Prop
  closureEvidence : interactionCouplingClosed I

def bridgeClosed (I : InteractionCouplingPackage) : Prop :=
  interactionCouplingClosed I

theorem bridge_from_interaction_coupling (I : InteractionCouplingPackage) (B : MacroscopicLimitBridge I) : bridgeClosed I := by
  exact B.closureEvidence

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse