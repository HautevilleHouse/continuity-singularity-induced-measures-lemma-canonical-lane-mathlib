import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.ContinuitySingularityStructure

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure RadonNikodymDerivationPackage {Ω : MeasureSpace}
    (P : ContinuitySingularityLemmaPackage Ω) where
  densityFunction : Ω.carrier → ℝ
  densityIntegrable : ∀ s, MeasurableSet s → ∫ x in s, densityFunction x ∂P.referenceMeasure = P.absolutelyContinuousPart s
  derivativeWellDefined : Prop
  derivativeUniqueUpToNullSet : Prop

structure RadonNikodymEvidence {Ω : MeasureSpace}
    {P : ContinuitySingularityLemmaPackage Ω} (R : RadonNikodymDerivationPackage P) where
  densityIntegrableClosed : R.densityIntegrable
  derivativeWellDefinedClosed : R.derivativeWellDefined
  derivativeUniqueUpToNullSetClosed : R.derivativeUniqueUpToNullSet

def RadonNikodymClosed {Ω : MeasureSpace} {P : ContinuitySingularityLemmaPackage Ω}
    (R : RadonNikodymDerivationPackage P) : Prop :=
  (∀ s, MeasurableSet s → ∫ x in s, R.densityFunction x ∂P.referenceMeasure = P.absolutelyContinuousPart s) ∧
  R.derivativeWellDefined ∧ R.derivativeUniqueUpToNullSet

theorem radon_nikodym_closed_from_evidence {Ω : MeasureSpace}
    {P : ContinuitySingularityLemmaPackage Ω} (R : RadonNikodymDerivationPackage P)
    (E : RadonNikodymEvidence R) : RadonNikodymClosed R := by
  exact And.intro E.densityIntegrableClosed
    (And.intro E.derivativeWellDefinedClosed E.derivativeUniqueUpToNullSetClosed)

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
