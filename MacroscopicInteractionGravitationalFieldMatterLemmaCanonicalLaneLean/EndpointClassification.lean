import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.SolutionExistence

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure EndpointClassificationPackage {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} {S : SolutionExistencePackage G T C E} where
  macroscopicInteractionEstablished : Prop
  matterGravitationalCouplingClosed : Prop
  remainderResolved : Prop
  admissibleClassClosure : Prop

structure EndpointClassificationEvidence {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} {S : SolutionExistencePackage G T C E}
    (Ep : EndpointClassificationPackage G T C E S) where
  macroscopicInteractionEstablishedClosed : Ep.macroscopicInteractionEstablished
  matterGravitationalCouplingClosedClosed : Ep.matterGravitationalCouplingClosed
  remainderResolvedClosed : Ep.remainderResolved
  admissibleClassClosureClosed : Ep.admissibleClassClosure

def EndpointClassificationClosed {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} {S : SolutionExistencePackage G T C E}
    (Ep : EndpointClassificationPackage G T C E S) : Prop :=
  Ep.macroscopicInteractionEstablished ∧
  Ep.matterGravitationalCouplingClosed ∧
  Ep.remainderResolved ∧
  Ep.admissibleClassClosure

theorem endpoint_classification_closed_from_evidence
    {G : SpacetimeCurvaturePackage} {T : MatterEnergyMomentumPackage G}
    {C : CouplingConstantPackage G T} {E : FieldEquationsPackage G T C}
    {S : SolutionExistencePackage G T C E} (Ep : EndpointClassificationPackage G T C E S)
    (Ev : EndpointClassificationEvidence Ep) : EndpointClassificationClosed Ep := by
  exact And.intro Ev.macroscopicInteractionEstablishedClosed
    (And.intro Ev.matterGravitationalCouplingClosedClosed
      (And.intro Ev.remainderResolvedClosed Ev.admissibleClassClosureClosed))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse