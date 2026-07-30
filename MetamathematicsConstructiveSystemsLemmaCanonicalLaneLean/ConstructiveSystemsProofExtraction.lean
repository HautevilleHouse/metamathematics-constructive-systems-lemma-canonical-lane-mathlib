import MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean.ConstructiveSystemsAdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemma

structure ExtractionEvidence where
  formulaRepresentation : Prop
  realizerConstructed : Prop
  extractionCorrectness : Prop

def extractionClosed (E : ExtractionEvidence) : Prop :=
  E.formulaRepresentation ∧ E.realizerConstructed ∧ E.extractionCorrectness

theorem extraction_closed_from_evidence (E : ExtractionEvidence) (H : E.formulaRepresentation) (R : E.realizerConstructed) (C : E.extractionCorrectness) : extractionClosed E := by
  exact And.intro H (And.intro R C)

end MetamathematicsConstructiveSystemsLemma
end HautevilleHouse