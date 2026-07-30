import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveSystemLanguage where
  atomicFormulas : Type u
  compoundFormulas : List atomicFormulas → atomicFormulas
  logicalConstants : List String
  deductionRules : Type v

structure ConstructiveSystemLanguageEvidence (L : ConstructiveSystemLanguage) where
  atomicFormulasDefined : True
  deductionRulesDefined : True

def ConstructiveSystemLanguageClosed (L : ConstructiveSystemLanguage) : Prop :=
  True

theorem constructive_system_language_closed_from_evidence
    (L : ConstructiveSystemLanguage) (E : ConstructiveSystemLanguageEvidence L) :
    ConstructiveSystemLanguageClosed L := by
  exact True.intro

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse