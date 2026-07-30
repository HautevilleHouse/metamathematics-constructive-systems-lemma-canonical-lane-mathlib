import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MetamathematicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MetamathematicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
