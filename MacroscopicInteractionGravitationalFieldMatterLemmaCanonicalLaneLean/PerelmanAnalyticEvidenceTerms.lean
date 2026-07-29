import MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure CurvatureEvidenceTerms (C : CurvatureAnalyticCertificate) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : CurvatureAnalyticCertificateClosed C

def CurvatureAnalyticCertificate.evidenceTerms (C : CurvatureAnalyticCertificate) : CurvatureEvidenceTerms C :=
  { riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
  , bianchiIdentities := C.bianchiIdentitiesClosed
  , ricciContractionLaw := C.ricciContractionLawClosed
  , scalarTraceLaw := C.scalarTraceLawClosed
  , curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
  , curvatureClosed := curvature_analytic_certificate_closed C
  }

structure InteractionEvidenceTerms (I : InteractionAnalyticCertificate) where
  interactionLagrangianClosed : I.interactionLagrangian
  matterFieldCouplingClosed : I.matterFieldCoupling
  fieldEquationsClosed : I.fieldEquations
  interactionClosed : InteractionAnalyticCertificateClosed I

def InteractionAnalyticCertificate.evidenceTerms (I : InteractionAnalyticCertificate) : InteractionEvidenceTerms I :=
  { interactionLagrangianClosed := I.interactionLagrangianClosed
  , matterFieldCouplingClosed := I.matterFieldCouplingClosed
  , fieldEquationsClosed := I.fieldEquationsClosed
  , interactionClosed := interaction_analytic_certificate_closed I
  }

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse