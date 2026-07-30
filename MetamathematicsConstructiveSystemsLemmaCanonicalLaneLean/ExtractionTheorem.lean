import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ExtractionTheoremPackage where
  constructiveProof : Prop
  extractedProgramTerminates : Prop
  correctnessGuarantee : Prop
  extractionSoundness : Prop
  constructiveProofEvidence : constructiveProof
  extractedProgramTerminatesEvidence : extractedProgramTerminates
  correctnessGuaranteeEvidence : correctnessGuarantee
  extractionSoundnessEvidence : extractionSoundness

def ExtractionTheoremClosed (E : ExtractionTheoremPackage) : Prop :=
  E.constructiveProof ∧ E.extractedProgramTerminates ∧
  E.correctnessGuarantee ∧ E.extractionSoundness

theorem extraction_theorem_closed_from_evidence (E : ExtractionTheoremPackage) :
    ExtractionTheoremClosed E :=
  And.intro E.constructiveProofEvidence
    (And.intro E.extractedProgramTerminatesEvidence
      (And.intro E.correctnessGuaranteeEvidence E.extractionSoundnessEvidence))

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse