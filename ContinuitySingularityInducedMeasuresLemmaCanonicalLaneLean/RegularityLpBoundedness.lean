import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.SingularityDecomposition

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure LpBoundednessPackage where
  exponent : ℝ≥1
  densityFunction : Lp f
  boundednessCondition : ∫ f^p dμ < ∞

def LpBoundednessClosed (L : LpBoundednessPackage) : Prop :=
  L.boundednessCondition

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse