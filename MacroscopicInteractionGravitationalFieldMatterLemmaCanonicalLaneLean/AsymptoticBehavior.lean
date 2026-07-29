import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure AsymptoticBehaviorPackage where
  asymptoticFlatness : Prop
  falloffConditions : Prop
  isolatedSystemAssumption : Prop
  admissibilityAtInfinity : Prop

structure AsymptoticBehaviorEvidence (A : AsymptoticBehaviorPackage) where
  asymptoticFlatnessClosed : A.asymptoticFlatness
  falloffConditionsClosed : A.falloffConditions
  isolatedSystemAssumptionClosed : A.isolatedSystemAssumption
  admissibilityAtInfinityClosed : A.admissibilityAtInfinity

def AsymptoticBehaviorClosed (A : AsymptoticBehaviorPackage) : Prop :=
  A.asymptoticFlatness ∧ A.falloffConditions ∧ A.isolatedSystemAssumption ∧ A.admissibilityAtInfinity

theorem asymptotic_behavior_closed_from_evidence (A : AsymptoticBehaviorPackage) (E : AsymptoticBehaviorEvidence A) :
    AsymptoticBehaviorClosed A := by
  exact And.intro E.asymptoticFlatnessClosed
    (And.intro E.falloffConditionsClosed
      (And.intro E.isolatedSystemAssumptionClosed E.admissibilityAtInfinityClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse