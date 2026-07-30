import MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean.ConstructiveSystemsProofExtraction

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemma

structure CurryHowardPackage where
  typeSystem : Type
  termModel : Type
  typingJudgements : Prop
  reductionWellDefined : Prop

def curryHowardClosed (C : CurryHowardPackage) : Prop :=
  C.typingJudgements ∧ C.reductionWellDefined

theorem curry_howard_closed_from_evidence (C : CurryHowardPackage) (T : C.typingJudgements) (R : C.reductionWellDefined) : curryHowardClosed C := by
  exact And.intro T R

end MetamathematicsConstructiveSystemsLemma
end HautevilleHouse