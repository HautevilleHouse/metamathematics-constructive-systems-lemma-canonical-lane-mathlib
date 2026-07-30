import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConstructiveSystemsLemmaClosed (admittedClosure A)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact admittedClosure A

end MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean
end HautevilleHouse