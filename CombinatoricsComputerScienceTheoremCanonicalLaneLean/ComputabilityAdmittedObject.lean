import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure ComputabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ComputabilityAdmittedObject where
  space : ComputabilitySpace
  turingComplete : Prop
  nonDeterministic : Prop
  npComplete : Prop
  polynomialTime : Prop
  reductionPair : Type
  reductionTopology : TopologicalSpace reductionPair
  reductionExists : Prop
  conclusion : reductionExists

structure ComputabilityEndgameState where
  object : ComputabilityAdmittedObject

def ComputabilityWitnessClosed (O : ComputabilityAdmittedObject) : Prop :=
  O.reductionExists

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
