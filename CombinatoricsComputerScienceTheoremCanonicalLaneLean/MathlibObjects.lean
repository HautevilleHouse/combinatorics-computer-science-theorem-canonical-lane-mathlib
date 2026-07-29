import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CCSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CCSAdmittedObject where
  space : CCSpace
  decidableLanguage : Prop
  turingComplete : Prop
  npComplete : Prop
  reductionModel : Type
  reductionTopology : TopologicalSpace reductionModel
  reductionValid : Prop
  conclusion : reductionValid

def CCSWitnessClosed (O : CCSAdmittedObject) : Prop :=
  O.reductionValid

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse