import MetamathematicsConstructiveSystemsLemmaCanonicalLaneLean.ConstructiveSystemsAdmissibleClass

namespace HautevilleHouse
namespace MetamathematicsConstructiveSystemsLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  constructiveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetamathematicsConstructiveSystemsLemma
end HautevilleHouse