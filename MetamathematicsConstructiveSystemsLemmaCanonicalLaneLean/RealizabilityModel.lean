import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure RealizabilityModelPackage where
  baseModel : Type u
  realizabilityRelation : Type v
  soundness : Prop
  adequacy : Prop
  computationalInterpretation : Prop

structure RealizabilityModelEvidence (R : RealizabilityModelPackage) where
  soundnessClosed : R.soundness
  adequacyClosed : R.adequacy
  computationalInterpretationClosed : R.computationalInterpretation

def RealizabilityModelClosed (R : RealizabilityModelPackage) : Prop :=
  R.soundness ∧ R.adequacy ∧ R.computationalInterpretation

theorem realizability_model_closed_from_evidence (R : RealizabilityModelPackage)
    (E : RealizabilityModelEvidence R) : RealizabilityModelClosed R := by
  exact And.intro E.soundnessClosed (And.intro E.adequacyClosed E.computationalInterpretationClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
