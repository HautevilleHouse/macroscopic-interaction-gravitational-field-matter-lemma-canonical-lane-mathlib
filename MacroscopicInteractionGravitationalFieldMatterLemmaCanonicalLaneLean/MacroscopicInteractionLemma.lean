import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.StressEnergyMomentumTensors
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.MatterFieldCoupling
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.GravitationalFieldEquations

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure MacroscopicInteractionLemmaPackage {S : StressEnergyMomentumPackage}
    {M : MatterFieldPackage} {G : GravitationalFieldPackage S} where
  interactionFunctional : Type u
  extremalPrinciple : Prop
  conservationCoupling : Prop
  geodesicDeviation : Prop
  tidalForces : Prop

structure MacroscopicInteractionLemmaEvidence {S : StressEnergyMomentumPackage}
    {M : MatterFieldPackage} {G : GravitationalFieldPackage S}
    (L : MacroscopicInteractionLemmaPackage S M G) where
  extremalPrincipleClosed : L.extremalPrinciple
  conservationCouplingClosed : L.conservationCoupling
  geodesicDeviationClosed : L.geodesicDeviation
  tidalForcesClosed : L.tidalForces

def MacroscopicInteractionLemmaClosed {S : StressEnergyMomentumPackage}
    {M : MatterFieldPackage} {G : GravitationalFieldPackage S}
    (L : MacroscopicInteractionLemmaPackage S M G) : Prop :=
  L.extremalPrinciple ∧ L.conservationCoupling ∧ L.geodesicDeviation ∧ L.tidalForces

theorem macroscopic_interaction_lemma_closed_from_evidence
    {S : StressEnergyMomentumPackage} {M : MatterFieldPackage}
    {G : GravitationalFieldPackage S} (L : MacroscopicInteractionLemmaPackage S M G)
    (E : MacroscopicInteractionLemmaEvidence L) : MacroscopicInteractionLemmaClosed L := by
  exact And.intro E.extremalPrincipleClosed
    (And.intro E.conservationCouplingClosed
      (And.intro E.geodesicDeviationClosed E.tidalForcesClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse
