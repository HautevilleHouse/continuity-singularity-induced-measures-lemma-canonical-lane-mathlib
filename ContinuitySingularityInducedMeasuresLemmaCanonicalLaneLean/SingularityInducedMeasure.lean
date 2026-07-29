import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure SingularityInducedMeasurePackage where
  baseMeasure : Type u
  perturbedMeasure : Type u
  singularitySet : Set baseMeasure
  inducedMeasureCondition : Prop
  continuityCondition : Prop

def SingularityInducedMeasureClosed (S : SingularityInducedMeasurePackage) : Prop :=
  S.inducedMeasureCondition ∧ S.continuityCondition

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse