import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.FieldEquations

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure SolutionExistencePackage {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} where
  localExistence : Prop
  uniqueness : Prop
  continuationCriterion : Prop
  maximalDevelopment : Prop
  stability : Prop

structure SolutionExistenceEvidence {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} (S : SolutionExistencePackage G T C E) where
  localExistenceClosed : S.localExistence
  uniquenessClosed : S.uniqueness
  continuationCriterionClosed : S.continuationCriterion
  maximalDevelopmentClosed : S.maximalDevelopment
  stabilityClosed : S.stability

def SolutionExistenceClosed {G : SpacetimeCurvaturePackage}
    {T : MatterEnergyMomentumPackage G} {C : CouplingConstantPackage G T}
    {E : FieldEquationsPackage G T C} (S : SolutionExistencePackage G T C E) : Prop :=
  S.localExistence ∧
  S.uniqueness ∧
  S.continuationCriterion ∧
  S.maximalDevelopment ∧
  S.stability

theorem solution_existence_closed_from_evidence
    {G : SpacetimeCurvaturePackage} {T : MatterEnergyMomentumPackage G}
    {C : CouplingConstantPackage G T} {E : FieldEquationsPackage G T C}
    (S : SolutionExistencePackage G T C E) (Ev : SolutionExistenceEvidence S) :
    SolutionExistenceClosed S := by
  exact And.intro Ev.localExistenceClosed
    (And.intro Ev.uniquenessClosed
      (And.intro Ev.continuationCriterionClosed
        (And.intro Ev.maximalDevelopmentClosed Ev.stabilityClosed)))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse