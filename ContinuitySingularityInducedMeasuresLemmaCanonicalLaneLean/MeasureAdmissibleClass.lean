import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure MeasureAdmissibleObject where
  measureSpace : Type u
  sigmaAlgebra : Set (Set (measureSpace))
  topology : TopologicalSpace measureSpace
  borelMeasurable : sigmaAlgebra ≥ borel (α := measureSpace)
  referenceMeasure : Measure measureSpace
  inducedMeasure : measureSpace → Measure measureSpace
  continuityCondition : (referenceMeasure ≪ inducedMeasure x) ∘ x

structure AdmissibleClass where
  object : MeasureAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeasureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse