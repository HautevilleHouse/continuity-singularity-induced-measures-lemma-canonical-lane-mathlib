import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuitySingularityClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse