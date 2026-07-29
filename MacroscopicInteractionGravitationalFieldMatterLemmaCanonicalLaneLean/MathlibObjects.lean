import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GravitationalSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier -> carrier -> ℝ
  connection : Type
  curvature : Type

structure InteractionAdmittedObject where
  system : GravitationalSystem
  matterField : Prop
  interactionLagrangian : Prop
  fieldEquations : Prop
  conclusion : fieldEquations

structure InteractionEndgameState where
  object : InteractionAdmittedObject

def PoissonWitnessClosed (O : InteractionAdmittedObject) : Prop :=
  O.fieldEquations

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse