import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure CurvatureAnalyticCertificate where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs

def CurvatureAnalyticCertificateClosed (C : CurvatureAnalyticCertificate) : Prop :=
  C.riemannTensorSymmetries ∧ C.bianchiIdentities ∧ C.ricciContractionLaw ∧ C.scalarTraceLaw ∧ C.curvatureEvolutionInputs

theorem curvature_analytic_certificate_closed (C : CurvatureAnalyticCertificate) : CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed C.curvatureEvolutionInputsClosed)))

structure InteractionAnalyticCertificate where
  interactionLagrangian : Prop
  matterFieldCoupling : Prop
  fieldEquations : Prop
  interactionLagrangianClosed : interactionLagrangian
  matterFieldCouplingClosed : matterFieldCoupling
  fieldEquationsClosed : fieldEquations

def InteractionAnalyticCertificateClosed (I : InteractionAnalyticCertificate) : Prop :=
  I.interactionLagrangian ∧ I.matterFieldCoupling ∧ I.fieldEquations

theorem interaction_analytic_certificate_closed (I : InteractionAnalyticCertificate) : InteractionAnalyticCertificateClosed I := by
  exact And.intro I.interactionLagrangianClosed (And.intro I.matterFieldCouplingClosed I.fieldEquationsClosed)

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse