import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure DisjunctionProperty {L : ConstructiveSystemLanguage} where
  formula : L.atomicFormulas
  disjuncts : List (L.atomicFormulas)
  provabilityCondition : Prop
  disjunctionPropertyHolds : Prop

structure DisjunctionPropertyEvidence {L : ConstructiveSystemLanguage} (D : DisjunctionProperty L) where
  provabilityConditionClosed : D.provabilityCondition
  disjunctionPropertyHoldsClosed : D.disjunctionPropertyHolds

def DisjunctionPropertyClosed {L : ConstructiveSystemLanguage} (D : DisjunctionProperty L) : Prop :=
  D.provabilityCondition ∧ D.disjunctionPropertyHolds

theorem disjunction_property_closed_from_evidence
    {L : ConstructiveSystemLanguage} (D : DisjunctionProperty L) (E : DisjunctionPropertyEvidence D) :
    DisjunctionPropertyClosed D := by
  exact And.intro E.provabilityConditionClosed E.disjunctionPropertyHoldsClosed

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse