import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure GödelNumberingPackage where
  formulaSet : Type u
  numbering : Type v
  injectivity : Prop
  computability : Prop
  selfReferenceLemma : Prop

structure GödelNumberingEvidence (G : GödelNumberingPackage) where
  injectivityClosed : G.injectivity
  computabilityClosed : G.computability
  selfReferenceLemmaClosed : G.selfReferenceLemma

def GödelNumberingClosed (G : GödelNumberingPackage) : Prop :=
  G.injectivity ∧ G.computability ∧ G.selfReferenceLemma

theorem gödel_numbering_closed_from_evidence (G : GödelNumberingPackage)
    (E : GödelNumberingEvidence G) : GödelNumberingClosed G := by
  exact And.intro E.injectivityClosed (And.intro E.computabilityClosed E.selfReferenceLemmaClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
