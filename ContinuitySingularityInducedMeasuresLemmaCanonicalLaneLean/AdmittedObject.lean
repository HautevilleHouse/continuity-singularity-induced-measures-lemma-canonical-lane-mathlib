import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure AdmittedObject where
  space : Type u
  sigmaAlgebra : Set (Set space)
  measure : space → ℝ
  singularityMeasure : Type v
  continuityMeasure : Type w
  evidence : Prop
  conclusion : evidence

def ContinuitySingularityClosed (O : AdmittedObject) : Prop :=
  O.evidence

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse