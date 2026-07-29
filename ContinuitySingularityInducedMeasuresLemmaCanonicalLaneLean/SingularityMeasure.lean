import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.AbsContinuityLemma

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure SingularMeasure (M : Type u) [TopologicalSpace M] where
  measure : Set M → ℝ
  singularSupport : Set M
  singularityCondition : Prop
  nullSet : Set M
  nullSetMeasureZero : Prop

structure SingularMeasureEvidence {M : Type u} [TopologicalSpace M]
    (S : SingularMeasure M) where
  singularityConditionClosed : S.singularityCondition
  nullSetMeasureZeroClosed : S.nullSetMeasureZero

def SingularMeasureClosed {M : Type u} [TopologicalSpace M]
    (S : SingularMeasure M) : Prop :=
  S.singularityCondition ∧ S.nullSetMeasureZero

theorem singular_measure_closed_from_evidence {M : Type u} [TopologicalSpace M]
    (S : SingularMeasure M) (E : SingularMeasureEvidence S) :
    SingularMeasureClosed S := by
  exact And.intro E.singularityConditionClosed E.nullSetMeasureZeroClosed

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse