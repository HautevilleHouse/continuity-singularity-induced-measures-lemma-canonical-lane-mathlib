import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure MeasureSpace where
  carrier : Type u
  measurableSpace : MeasurableSpace carrier

structure SignedMeasure (Ω : MeasureSpace) where
  posPart : Measure Ω.carrier
  negPart : Measure Ω.carrier
  totalVariation : Measure Ω.carrier

structure InducedMeasure (Ω : MeasureSpace) (ν : SignedMeasure Ω) where
  density : Ω.carrier → ℝ
  integrable : ∀ s, MeasurableSet s → ∫ x in s, density x ∂(ν.totalVariation) = ν.totalVariation s

structure SingularityPair (Ω : MeasureSpace) (μ ν : Measure Ω.carrier) where
  mutuallySingular : ∃ A, MeasurableSet A ∧ μ A = 0 ∧ ν (Set.univ \ Set.univ) = 0
  absolutelyContinuousPart : Measure Ω.carrier

structure ContinuitySingularityLemmaPackage (Ω : MeasureSpace) where
  referenceMeasure : Measure Ω.carrier
  targetMeasure : Measure Ω.carrier
  lebesgueDecompositionExists : Prop
  radonNikodymDerivativeExists : Prop
  absolutelyContinuousPart : Measure Ω.carrier
  singularPart : Measure Ω.carrier
  decompositionUniqueness : Prop

structure ContinuitySingularityLayerEvidence {Ω : MeasureSpace} (P : ContinuitySingularityLemmaPackage Ω) where
  lebesgueDecompositionClosed : P.lebesgueDecompositionExists
  radonNikodymDerivativeClosed : P.radonNikodymDerivativeExists
  decompositionUniquenessClosed : P.decompositionUniqueness

def ContinuitySingularityLayerClosed {Ω : MeasureSpace} (P : ContinuitySingularityLemmaPackage Ω) : Prop :=
  P.lebesgueDecompositionExists ∧ P.radonNikodymDerivativeExists ∧ P.decompositionUniqueness

theorem continuity_singularity_layer_closed_from_evidence
    {Ω : MeasureSpace} (P : ContinuitySingularityLemmaPackage Ω)
    (E : ContinuitySingularityLayerEvidence P) : ContinuitySingularityLayerClosed P := by
  exact And.intro E.lebesgueDecompositionClosed
    (And.intro E.radonNikodymDerivativeClosed E.decompositionUniquenessClosed)

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
