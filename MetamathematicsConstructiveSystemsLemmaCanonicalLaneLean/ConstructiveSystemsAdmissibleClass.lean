import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemma

structure ConstructiveAdmittedObject where
  carrier : Type
  constructiveStructure : Prop
  proofSystemSound : Prop
  conclusion : proofSystemSound

def constructiveWitnessClosed (O : ConstructiveAdmittedObject) : Prop :=
  O.proofSystemSound

end MetamathematicsConstructiveSystemsLemma
end HautevilleHouse