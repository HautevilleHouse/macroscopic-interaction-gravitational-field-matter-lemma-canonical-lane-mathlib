import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.StressEnergyMomentumTensors

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure GravitationalFieldPackage {S : StressEnergyMomentumPackage} where
  einsteinEquations : S.einsteinFieldEquation ∧ S.conservationLaw
  metricCompatibility : Prop
  geodesicEquation : Prop
  weakFieldLimit : Prop

structure GravitationalFieldEvidence {S : StressEnergyMomentumPackage}
    (G : GravitationalFieldPackage S) where
  einsteinEquationsClosed : G.einsteinEquations
  metricCompatibilityClosed : G.metricCompatibility
  geodesicEquationClosed : G.geodesicEquation
  weakFieldLimitClosed : G.weakFieldLimit

def GravitationalFieldClosed {S : StressEnergyMomentumPackage}
    (G : GravitationalFieldPackage S) : Prop :=
  G.einsteinEquations ∧ G.metricCompatibility ∧ G.geodesicEquation ∧ G.weakFieldLimit

theorem gravitational_field_closed_from_evidence
    {S : StressEnergyMomentumPackage} (G : GravitationalFieldPackage S)
    (E : GravitationalFieldEvidence G) : GravitationalFieldClosed G := by
  exact And.intro E.einsteinEquationsClosed
    (And.intro E.metricCompatibilityClosed
      (And.intro E.geodesicEquationClosed E.weakFieldLimitClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse
