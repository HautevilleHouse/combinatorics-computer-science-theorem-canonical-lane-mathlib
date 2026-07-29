import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsComputerScienceTheoremCanonicalLaneLean.PrimitiveBooleanCircuit

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure CircuitComplexityPackage where
  circuitFamily : Nat -> PrimitiveBooleanCircuit
  sizeLowerBound : Nat -> Nat
  depthLowerBound : Nat -> Nat
  sizeBoundProof : Prop
  depthBoundProof : Prop

structure CircuitComplexityEvidence (C : CircuitComplexityPackage) where
  sizeBoundProofClosed : C.sizeBoundProof
  depthBoundProofClosed : C.depthBoundProof

def CircuitComplexityClosed (C : CircuitComplexityPackage) : Prop :=
  C.sizeBoundProof ∧ C.depthBoundProof

theorem circuit_complexity_closed_from_evidence (C : CircuitComplexityPackage)
    (E : CircuitComplexityEvidence C) : CircuitComplexityClosed C :=
  And.intro E.sizeBoundProofClosed E.depthBoundProofClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse