import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure FixedPointLemmaPackage where
  theory : Type u
  fixedPointConstruction : Type v
  existence : Prop
  constructiveWitness : Prop
  selfReferentiality : Prop

structure FixedPointLemmaEvidence (F : FixedPointLemmaPackage) where
  existenceClosed : F.existence
  constructiveWitnessClosed : F.constructiveWitness
  selfReferentialityClosed : F.selfReferentiality

def FixedPointLemmaClosed (F : FixedPointLemmaPackage) : Prop :=
  F.existence ∧ F.constructiveWitness ∧ F.selfReferentiality

theorem fixed_point_lemma_closed_from_evidence (F : FixedPointLemmaPackage)
    (E : FixedPointLemmaEvidence F) : FixedPointLemmaClosed F := by
  exact And.intro E.existenceClosed (And.intro E.constructiveWitnessClosed E.selfReferentialityClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
