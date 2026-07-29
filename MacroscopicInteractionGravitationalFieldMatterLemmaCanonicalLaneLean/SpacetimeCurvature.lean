import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure SpacetimeCurvaturePackage where
  spacetimeManifold : Type u
  topology : TopologicalSpace spacetimeManifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothFourManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure SpacetimeCurvatureEvidence (G : SpacetimeCurvaturePackage) where
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def SpacetimeCurvatureClosed (G : SpacetimeCurvaturePackage) : Prop :=
  G.smoothFourManifold ∧
  G.metricSmooth ∧
  G.riemannTensorLawful ∧
  G.ricciTensorContractedFromRiemann ∧
  G.scalarCurvatureTraceOfRicci

theorem spacetime_curvature_closed_from_evidence
    (G : SpacetimeCurvaturePackage) (E : SpacetimeCurvatureEvidence G) :
    SpacetimeCurvatureClosed G := by
  exact And.intro E.smoothFourManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed
          E.scalarCurvatureTraceOfRicciClosed)))

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse