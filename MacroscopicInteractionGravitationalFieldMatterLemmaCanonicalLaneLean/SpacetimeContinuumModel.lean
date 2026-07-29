import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure SpacetimeContinuumModel where
  carrier : Type u
  topology : TopologicalSpace carrier
  differentiableStructure : Prop
  lorentzianMetric : Prop
  dimensionFour : Prop

def spacetimeContinuumClosed (M : SpacetimeContinuumModel) : Prop :=
  M.differentiableStructure ∧ M.lorentzianMetric ∧ M.dimensionFour

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse