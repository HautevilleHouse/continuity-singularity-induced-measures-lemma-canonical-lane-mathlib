import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure RadonNikodymDerivativePackage where
  densityFunction : Type u
  absoluteContinuity : Prop
  derivativeIntegrable : Prop
  chainRuleCompatibility : Prop

def RadonNikodymDerivativeClosed (R : RadonNikodymDerivativePackage) : Prop :=
  R.absoluteContinuity ∧ R.derivativeIntegrable ∧ R.chainRuleCompatibility

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse