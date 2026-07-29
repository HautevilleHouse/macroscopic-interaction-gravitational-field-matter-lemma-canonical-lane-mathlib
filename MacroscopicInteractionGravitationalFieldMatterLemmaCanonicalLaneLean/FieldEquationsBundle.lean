import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean

structure EinsteinHilbertAction where
  metricField : Type u
  lagrangianDensity : Prop
  variationPrinciple : Prop

structure StressEnergyTensor where
  matterFields : Type u
  energyDensity : Prop
  momentumFlux : Prop

def stressEnergyTraceCondition (T : StressEnergyTensor) : Prop :=
  T.energyDensity ∧ T.momentumFlux

structure FieldEquationsBundle where
  action : EinsteinHilbertAction
  stressTensor : StressEnergyTensor
  fieldEquation : Prop
  compatibilityCondition : Prop

def fieldEquationsClosed (F : FieldEquationsBundle) : Prop :=
  F.action.variationPrinciple ∧ stressEnergyTraceCondition F.stressTensor ∧ F.fieldEquation ∧ F.compatibilityCondition

end MacroscopicInteractionGravitationalFieldMatterLemmaCanonicalLaneLean
end HautevilleHouse