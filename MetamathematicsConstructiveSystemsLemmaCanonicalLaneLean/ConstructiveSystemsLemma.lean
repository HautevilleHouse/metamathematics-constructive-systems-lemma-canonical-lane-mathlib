import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveSystemsLemmaPackage where
  formula : Type u
  proof : Type v
  formulaStructure : Prop
  proofStructure : Prop
  constructiveRealizability : Prop

def ConstructiveSystemsLemmaClosed (P : ConstructiveSystemsLemmaPackage) : Prop :=
  P.formulaStructure ∧ P.proofStructure ∧ P.constructiveRealizability

structure ConstructiveSystemsEvidence (P : ConstructiveSystemsLemmaPackage) where
  formulaStructureClosed : P.formulaStructure
  proofStructureClosed : P.proofStructure
  constructiveRealizabilityClosed : P.constructiveRealizability

theorem constructive_systems_lemma_closed_from_evidence
    (P : ConstructiveSystemsLemmaPackage) (E : ConstructiveSystemsEvidence P) :
    ConstructiveSystemsLemmaClosed P := by
  exact And.intro E.formulaStructureClosed
    (And.intro E.proofStructureClosed E.constructiveRealizabilityClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse