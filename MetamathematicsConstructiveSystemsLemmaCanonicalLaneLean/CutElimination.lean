import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

structure CutEliminationPackage where
  sequentCalculus : Type u
  cutRule : Type v
  admissibility : Prop
  subformulaProperty : Prop
  normalization : Prop

structure CutEliminationEvidence (C : CutEliminationPackage) where
  admissibilityClosed : C.admissibility
  subformulaPropertyClosed : C.subformulaProperty
  normalizationClosed : C.normalization

def CutEliminationClosed (C : CutEliminationPackage) : Prop :=
  C.admissibility ∧ C.subformulaProperty ∧ C.normalization

theorem cut_elimination_closed_from_evidence (C : CutEliminationPackage)
    (E : CutEliminationEvidence C) : CutEliminationClosed C := by
  exact And.intro E.admissibilityClosed (And.intro E.subformulaPropertyClosed E.normalizationClosed)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse
