import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure ContinuitySingularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuitySingularityAdmittedObject where
  space : ContinuitySingularitySpace
  measureFamily : Prop
  singularityStructure : Prop
  continuityProperty : Prop
  conclusion : continuityProperty

def ContinuitySingularityWitnessClosed (O : ContinuitySingularityAdmittedObject) : Prop :=
  O.continuityProperty

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse