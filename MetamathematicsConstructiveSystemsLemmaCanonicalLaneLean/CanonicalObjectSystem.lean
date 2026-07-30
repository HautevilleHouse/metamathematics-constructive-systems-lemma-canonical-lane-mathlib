import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveObjectSystem where
  formula : Type
  proof : Type
  reduction : Type
  canonicalProof : formula → proof
  proofCheck : proof → Prop
  reductionCheck : reduction → Prop
  closureCondition : ∀ (f : formula), proofCheck (canonicalProof f)

structure AdmissibleConstructiveObject (Sys : ConstructiveObjectSystem) where
  object : Sys.formula
  endpointSatisfied : Sys.proofCheck (Sys.canonicalProof object)
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ConstructiveAdmittedClosure (A : AdmissibleConstructiveObject) : Prop :=
  Sys.proofCheck (Sys.canonicalProof A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded) where Sys := A.??

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse