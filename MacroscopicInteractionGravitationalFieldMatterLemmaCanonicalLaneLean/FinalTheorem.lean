import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

def ConstrainedMacroscopicInteractionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_macroscopic_interaction_endgame (A : AdmissibleClass) :
    ConstrainedMacroscopicInteractionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse