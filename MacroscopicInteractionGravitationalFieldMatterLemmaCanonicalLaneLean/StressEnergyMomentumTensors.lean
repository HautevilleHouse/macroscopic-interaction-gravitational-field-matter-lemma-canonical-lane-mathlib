import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure StressEnergyMomentumPackage where
  ambientSpacetime : Type u
  lorentzianMetric : Type v
  energyMomentumTensor : Type w
  stressEnergyTensor : Type x
  einsteinTensor : Type y
  einsteinFieldEquation : Prop
  conservationLaw : Prop
  dominantEnergyCondition : Prop

structure StressEnergyMomentumEvidence (S : StressEnergyMomentumPackage) where
  einsteinFieldEquationClosed : S.einsteinFieldEquation
  conservationLawClosed : S.conservationLaw
  dominantEnergyConditionClosed : S.dominantEnergyCondition

def StressEnergyMomentumClosed (S : StressEnergyMomentumPackage) : Prop :=
  S.einsteinFieldEquation ∧ S.conservationLaw ∧ S.dominantEnergyCondition

theorem stress_energy_momentum_closed_from_evidence
    (S : StressEnergyMomentumPackage) (E : StressEnergyMomentumEvidence S) :
    StressEnergyMomentumClosed S := by
  exact And.intro E.einsteinFieldEquationClosed
    (And.intro E.conservationLawClosed E.dominantEnergyConditionClosed)

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse
