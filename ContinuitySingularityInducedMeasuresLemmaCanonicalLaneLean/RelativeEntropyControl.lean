import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.RegularityLpBoundedness

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure RelativeEntropyControlPackage where
  entropy : Measure → Measure → ℝ
  relativeEntropyFinite : entropy μ ν < ∞
  continuityImplication : entropy μ ν < ∞ → continuityCondition

def RelativeEntropyControlClosed (R : RelativeEntropyControlPackage) : Prop :=
  R.continuityImplication

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse