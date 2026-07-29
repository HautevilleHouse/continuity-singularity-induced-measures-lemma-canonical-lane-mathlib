import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.ContinuitySingularityStructure

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure AbsoluteContinuityPair (Ω : MeasureSpace) (μ ν : Measure Ω.carrier) where
  absolutelyContinuous : ∀ s, MeasurableSet s → ν s = 0 → μ s = 0

structure SingularityDecompositionPackage {Ω : MeasureSpace}
    (P : ContinuitySingularityLemmaPackage Ω) where
  acPart : AbsoluteContinuityPair Ω P.referenceMeasure P.absolutelyContinuousPart
  singularPartMeasure : Measure Ω.carrier
  singularPartSingular : ∃ A, MeasurableSet A ∧ P.referenceMeasure A = 0 ∧ singularPartMeasure (Set.univ \ A) = 0
  decompositionUnique : Prop
  continuityProperty : ∀ ε > 0, ∃ δ > 0, ∀ s, MeasurableSet s → P.referenceMeasure s < δ → singularPartMeasure s < ε

structure SingularityDecompositionEvidence {Ω : MeasureSpace}
    {P : ContinuitySingularityLemmaPackage Ω} (S : SingularityDecompositionPackage P) where
  acPartClosed : S.acPart.absolutelyContinuous
  singularPartSingularClosed : S.singularPartSingular
  decompositionUniqueClosed : S.decompositionUnique
  continuityPropertyClosed : S.continuityProperty

def SingularityDecompositionClosed {Ω : MeasureSpace}
    {P : ContinuitySingularityLemmaPackage Ω} (S : SingularityDecompositionPackage P) : Prop :=
  S.acPart.absolutelyContinuous ∧ S.singularPartSingular ∧ S.decompositionUnique ∧ S.continuityProperty

theorem singularity_decomposition_closed_from_evidence {Ω : MeasureSpace}
    {P : ContinuitySingularityLemmaPackage Ω} (S : SingularityDecompositionPackage P)
    (E : SingularityDecompositionEvidence S) : SingularityDecompositionClosed S := by
  exact And.intro E.acPartClosed
    (And.intro E.singularPartSingularClosed
      (And.intro E.decompositionUniqueClosed E.continuityPropertyClosed))

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
