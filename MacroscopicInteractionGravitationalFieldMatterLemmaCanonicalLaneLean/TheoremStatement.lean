import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "macroscopic-interaction-gravitational-field-matter-lemma",
    theoremName := "Macroscopic Interaction Gravitational Field Matter Lemma",
    theoremObject := "Macroscopic interaction gravitational field matter lemma: The macroscopic stress-energy tensor of matter satisfying the Einstein field equations is divergence-free and positive-semidefinite when the dominant energy condition holds.",
    classicalBoundary := "The classical proof relies on the Bianchi identity and the Einstein field equations; this formalization bridges the classical proof into the admissible class.",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse