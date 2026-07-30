import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConsistencyProofPackage where
  systemDefined : Prop
  noDerivableContradiction : Prop
  modelExistence : Prop
  consistencyViaRealizability : Prop
  systemDefinedEvidence : systemDefined
  noDerivableContradictionEvidence : noDerivableContradiction
  modelExistenceEvidence : modelExistence
  consistencyViaRealizabilityEvidence : consistencyViaRealizability

def ConsistencyProofClosed (C : ConsistencyProofPackage) : Prop :=
  C.systemDefined ∧ C.noDerivableContradiction ∧
  C.modelExistence ∧ C.consistencyViaRealizability

theorem consistency_proof_closed_from_evidence (C : ConsistencyProofPackage) :
    ConsistencyProofClosed C :=
  And.intro C.systemDefinedEvidence
    (And.intro C.noDerivableContradictionEvidence
      (And.intro C.modelExistenceEvidence C.consistencyViaRealizabilityEvidence))

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse