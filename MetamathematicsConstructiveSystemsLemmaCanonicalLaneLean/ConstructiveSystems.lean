import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveSystemsPackage where
  systemType : Type u
  inferenceRules : Type v
  consistency : Prop
  completeness : Prop
  constructiveInterpretation : Prop

structure ConstructiveSystemsEvidence (P : ConstructiveSystemsPackage) where
  consistencyClosed : P.consistency
  completenessClosed : P.completeness
  constructiveInterpretationClosed : P.constructiveInterpretation

def ConstructiveSystemsClosed (P : ConstructiveSystemsPackage) : Prop :=
  P.consistency ∧ P.completeness ∧ P.constructiveInterpretation

theorem constructive_systems_closed_from_evidence (P : ConstructiveSystemsPackage)
    (E : ConstructiveSystemsEvidence P) : ConstructiveSystemsClosed P := by
  exact And.intro E.consistencyClosed (And.intro E.completenessClosed E.constructiveInterpretationClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
