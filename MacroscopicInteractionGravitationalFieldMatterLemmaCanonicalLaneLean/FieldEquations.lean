import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.CouplingConstant

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure FieldEquationsPackage {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T} where
  einsteinFieldEquations : Prop
  contractedBianchiIdentities : Prop
  matterConservation : Prop
  initialValueFormulation : Prop
  wellPosedness : Prop

structure FieldEquationsEvidence {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    (E : FieldEquationsPackage G T C) where
  einsteinFieldEquationsClosed : E.einsteinFieldEquations
  contractedBianchiIdentitiesClosed : E.contractedBianchiIdentities
  matterConservationClosed : E.matterConservation
  initialValueFormulationClosed : E.initialValueFormulation
  wellPosednessClosed : E.wellPosedness

def FieldEquationsClosed {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    (E : FieldEquationsPackage G T C) : Prop :=
  E.einsteinFieldEquations ∧
  E.contractedBianchiIdentities ∧
  E.matterConservation ∧
  E.initialValueFormulation ∧
  E.wellPosedness

theorem field_equations_closed_from_evidence
    {G : SpacetimeCurvaturePackage} {T : MatterEnergyMomentumPackage G}
    {C : CouplingConstantPackage G T} (E : FieldEquationsPackage G T C)
    (Ev : FieldEquationsEvidence E) : FieldEquationsClosed E := by
  exact And.intro Ev.einsteinFieldEquationsClosed
    (And.intro Ev.contractedBianchiIdentitiesClosed
      (And.intro Ev.matterConservationClosed
        (And.intro Ev.initialValueFormulationClosed Ev.wellPosednessClosed)))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse