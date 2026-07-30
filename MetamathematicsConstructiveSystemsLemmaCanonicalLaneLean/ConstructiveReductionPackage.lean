import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure ConstructiveReductionPackage (Sys : ConstructiveObjectSystem) where
  sourceFormula : Sys.formula
  targetFormula : Sys.formula
  reductionMap : Sys.proof sourceFormula → Sys.proof targetFormula
  reductionPreservesCheck : ∀ (p : Sys.proof sourceFormula), Sys.proofCheck p → Sys.proofCheck (reductionMap p)

structure ConstructiveReductionEvidence (Sys : ConstructiveObjectSystem) (R : ConstructiveReductionPackage Sys) where
  sourceCheckClosed : Sys.proofCheck (Sys.canonicalProof R.sourceFormula)
  targetCheckClosed : Sys.proofCheck (Sys.canonicalProof R.targetFormula)
  reductionMapClosed : ∀ (p : Sys.proof R.sourceFormula), Sys.proofCheck p → Sys.proofCheck (R.reductionMap p)

def ConstructiveReductionClosed (Sys : ConstructiveObjectSystem) (R : ConstructiveReductionPackage Sys) : Prop :=
  Sys.proofCheck (Sys.canonicalProof R.sourceFormula) ∧ Sys.proofCheck (Sys.canonicalProof R.targetFormula) ∧
  (∀ (p : Sys.proof R.sourceFormula), Sys.proofCheck p → Sys.proofCheck (R.reductionMap p))

theorem constructive_reduction_closed_from_evidence (Sys : ConstructiveObjectSystem) (R : ConstructiveReductionPackage Sys) (E : ConstructiveReductionEvidence Sys R) : ConstructiveReductionClosed Sys R :=
  And.intro E.sourceCheckClosed (And.intro E.targetCheckClosed E.reductionMapClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse