import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ProofStructure (L : ConstructiveSystemLanguage) where
  premises : List (L.atomicFormulas)
  conclusion : L.atomicFormulas
  derivation : L.deductionRules
  validityWitness : Prop

structure ProofStructureEvidence {L : ConstructiveSystemLanguage} (P : ProofStructure L) where
  validityWitnessClosed : P.validityWitness

def ProofStructureClosed {L : ConstructiveSystemLanguage} (P : ProofStructure L) : Prop :=
  P.validityWitness

theorem proof_structure_closed_from_evidence
    {L : ConstructiveSystemLanguage} (P : ProofStructure L) (E : ProofStructureEvidence P) :
    ProofStructureClosed P := by
  exact E.validityWitnessClosed

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse