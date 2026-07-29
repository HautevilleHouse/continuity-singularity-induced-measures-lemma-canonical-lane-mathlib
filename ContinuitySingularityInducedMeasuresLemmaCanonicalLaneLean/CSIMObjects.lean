import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean

structure CSIMSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : MeasureTheory.Measure carrier

structure CSIMAdmittedObject where
  space : CSIMSpace
  singularityProperty : Prop
  continuityProperty : Prop
  inducedStructure : Prop
  conclusion : inducedStructure

def CSIMWitnessClosed (O : CSIMAdmittedObject) : Prop :=
  O.inducedStructure

end ContinuitySingularityInducedMeasuresLemmaCanonicalLaneLean
end HautevilleHouse