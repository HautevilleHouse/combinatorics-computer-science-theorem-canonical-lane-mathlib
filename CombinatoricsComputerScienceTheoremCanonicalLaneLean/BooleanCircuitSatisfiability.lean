import HautevilleHouse.CombinatoricsComputerScienceTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure BooleanCircuitSatisfiability where
  circuit : Type u
  inputAssignment : Type v
  evalToTrue : circuit -> inputAssignment -> Prop
  existsSatisfyingAssignment : Prop

structure SatisfiabilityEvidence (B : BooleanCircuitSatisfiability) where
  existsSatisfyingAssignmentClosed : B.existsSatisfyingAssignment

def SatisfiabilityClosed (B : BooleanCircuitSatisfiability) : Prop :=
  B.existsSatisfyingAssignment

theorem satisfiability_closed_from_evidence (B : BooleanCircuitSatisfiability)
    (E : SatisfiabilityEvidence B) : SatisfiabilityClosed B := by
  exact E.existsSatisfyingAssignmentClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
