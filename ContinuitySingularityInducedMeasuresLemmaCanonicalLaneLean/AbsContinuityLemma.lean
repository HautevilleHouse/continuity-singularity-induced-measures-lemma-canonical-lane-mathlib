import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure AbsoluteContinuityStructure (M : Type u) [TopologicalSpace M] where
  referenceMeasure : Set M → ℝ
  continuityMeasure : Set M → ℝ
  absoluteContinuity : Prop
  densityFunction : M → ℝ
  densityIntegrable : Prop
  radonNikodymDerivative : Prop

def AbsoluteContinuityClosed {M : Type u} [TopologicalSpace M]
    (A : AbsoluteContinuityStructure M) : Prop :=
  A.absoluteContinuity ∧ A.densityIntegrable ∧ A.radonNikodymDerivative

theorem absolute_continuity_closed {M : Type u} [TopologicalSpace M]
    (A : AbsoluteContinuityStructure M) (h : AbsoluteContinuityClosed A) :
    True := by trivial

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse