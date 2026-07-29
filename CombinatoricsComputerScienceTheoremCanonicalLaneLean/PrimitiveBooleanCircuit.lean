import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure PrimitiveBooleanCircuit where
  inputVars : Nat
  gateCount : Nat
  gates : List (Nat × String × List Nat)
  outputVar : Nat

def circuitSize (c : PrimitiveBooleanCircuit) : Nat := c.gateCount

structure PrimitiveCircuitEvaluation (C : PrimitiveBooleanCircuit) where
  assignment : Vector Bool C.inputVars
  evaluation : C.gates.length -> Bool
  consistency : Prop
  consistencyTerm : consistency

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse