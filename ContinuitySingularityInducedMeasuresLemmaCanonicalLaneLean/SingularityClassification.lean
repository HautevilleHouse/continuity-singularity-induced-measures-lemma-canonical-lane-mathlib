import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure SingularityClassificationPackage where
  singularityType : Type u
  hausdorffDimension : ℝ
  blowupRate : ℝ
  classificationTheorem : Prop

def SingularityClassificationClosed (S : SingularityClassificationPackage) : Prop :=
  S.classificationTheorem

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse