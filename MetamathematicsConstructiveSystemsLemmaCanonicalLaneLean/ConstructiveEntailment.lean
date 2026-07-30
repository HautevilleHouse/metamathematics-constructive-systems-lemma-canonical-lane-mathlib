import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveEntailment {L : ConstructiveSystemLanguage} (Γ : List (L.atomicFormulas)) (A : L.atomicFormulas) where
  entailmentProof : ProofStructure L
  premisesMatch : entailmentProof.premises = Γ
  conclusionMatch : entailmentProof.conclusion = A

structure ConstructiveEntailmentEvidence {L : ConstructiveSystemLanguage} {Γ : List (L.atomicFormulas)} {A : L.atomicFormulas} (E : ConstructiveEntailment Γ A) where
  conclusionClosed : E.conclusionMatch
  premisesClosed : E.premisesMatch

def ConstructiveEntailmentClosed {L : ConstructiveSystemLanguage} {Γ : List (L.atomicFormulas)} {A : L.atomicFormulas} (E : ConstructiveEntailment Γ A) : Prop :=
  E.premisesMatch ∧ E.conclusionMatch

theorem constructive_entailment_closed_from_evidence
    {L : ConstructiveSystemLanguage} {Γ : List (L.atomicFormulas)} {A : L.atomicFormulas}
    (E : ConstructiveEntailment Γ A) (Ev : ConstructiveEntailmentEvidence E) :
    ConstructiveEntailmentClosed E := by
  exact And.intro Ev.premisesClosed Ev.conclusionClosed

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse