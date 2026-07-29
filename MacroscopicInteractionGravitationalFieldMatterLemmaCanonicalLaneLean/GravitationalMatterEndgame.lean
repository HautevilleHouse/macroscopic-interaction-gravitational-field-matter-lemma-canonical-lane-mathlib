import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.MacroscopicLimitBridge

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGravitationalMatterClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ gateClosed A

theorem constrained_gravitational_matter_endgame (A : AdmissibleClass) : ConstrainedGravitationalMatterClosure A := by
  -- assume we have a MacroscopicLimitBridge from A.object
  have hBridge : bridgeClosed A.object := by
    -- from the bridge lemma; here we construct it assuming the admissible object supplies it
    exact A.object.bridgeEvidence
  have hGate : gateClosed A := gate_from_admissible_class A
  exact And.intro hBridge hGate

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse