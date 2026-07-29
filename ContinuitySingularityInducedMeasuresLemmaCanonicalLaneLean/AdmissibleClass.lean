import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuitySingularityClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse