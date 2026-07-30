import MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean.ConstructiveSystemsGateLemmas

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemma

def ConstrainedConstructiveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_constructive_endgame (A : AdmissibleClass) :
    ConstrainedConstructiveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicsConstructiveSystemsLemma
end HautevilleHouse