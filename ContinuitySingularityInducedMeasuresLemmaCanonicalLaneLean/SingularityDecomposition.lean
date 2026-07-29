import HautevilleHouse.ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure SingularityDecompositionPackage where
  referenceMeasure : Measure Type
  singularSet : Set Type
  lebesgueDecomposition : referenceMeasure = μ_s + μ_ac
  singularityInducedPart : μ_s ≪ inducedMeasure

def SingularityDecompositionClosed (S : SingularityDecompositionPackage) : Prop :=
  S.singularityInducedPart

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse