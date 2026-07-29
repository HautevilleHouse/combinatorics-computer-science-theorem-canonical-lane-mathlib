import HautevilleHouse.CombinatoricsComputerScienceTheoremCanonicalLaneLean.BooleanCircuitSatisfiability
import Mathlib.Computability.TuringMachine

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure CookLevinTheorem where
  turingMachineHaltingProblem : Type u
  polynomialTimeReduction : Prop
  satIsNPComplete : Prop
  reductionCorrect : polynomialTimeReduction -> satIsNPComplete

structure CookLevinEvidence (C : CookLevinTheorem) where
  polynomialTimeReductionClosed : C.polynomialTimeReduction
  satIsNPCompleteClosed : C.satIsNPComplete
  reductionCorrectClosed : C.reductionCorrect C.polynomialTimeReductionClosed

def CookLevinClosed (C : CookLevinTheorem) : Prop :=
  C.polynomialTimeReduction ∧ C.satIsNPComplete

theorem cook_levin_closed_from_evidence (C : CookLevinTheorem)
    (E : CookLevinEvidence C) : CookLevinClosed C := by
  exact And.intro E.polynomialTimeReductionClosed E.satIsNPCompleteClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
