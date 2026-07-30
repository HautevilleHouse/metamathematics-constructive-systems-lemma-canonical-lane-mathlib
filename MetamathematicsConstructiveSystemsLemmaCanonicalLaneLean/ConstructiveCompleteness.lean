import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveCompleteness {L : ConstructiveSystemLanguage} where
  consistentSystem : Prop
  completenessCondition : Prop
  constructiveWitness : Prop

structure ConstructiveCompletenessEvidence {L : ConstructiveSystemLanguage} (C : ConstructiveCompleteness L) where
  consistentSystemClosed : C.consistentSystem
  completenessConditionClosed : C.completenessCondition
  constructiveWitnessClosed : C.constructiveWitness

def ConstructiveCompletenessClosed {L : ConstructiveSystemLanguage} (C : ConstructiveCompleteness L) : Prop :=
  C.consistentSystem ∧ C.completenessCondition ∧ C.constructiveWitness

theorem constructive_completeness_closed_from_evidence
    {L : ConstructiveSystemLanguage} (C : ConstructiveCompleteness L) (E : ConstructiveCompletenessEvidence C) :
    ConstructiveCompletenessClosed C := by
  exact And.intro E.consistentSystemClosed (And.intro E.completenessConditionClosed E.constructiveWitnessClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse