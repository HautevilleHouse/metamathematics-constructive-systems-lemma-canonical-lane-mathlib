import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

def ConstrainedConstructiveSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_constructive_systems_endgame (A : AdmissibleClass) :
    ConstrainedConstructiveSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse