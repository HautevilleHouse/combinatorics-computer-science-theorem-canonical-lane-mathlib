import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure NPCompletenessPackage where
  decisionProblem : Type u
  certificateCheck : decisionProblem → Type v → Prop
  polynomialTimeReduction : Prop
  completeness : Prop

structure NPCompletenessEvidence (P : NPCompletenessPackage) where
  polynomialTimeReductionClosed : P.polynomialTimeReduction
  completenessClosed : P.completeness

def NPCompletenessClosed (P : NPCompletenessPackage) : Prop :=
  P.polynomialTimeReduction ∧ P.completeness

theorem np_completeness_closed_from_evidence (P : NPCompletenessPackage)
    (E : NPCompletenessEvidence P) : NPCompletenessClosed P := by
  exact And.intro E.polynomialTimeReductionClosed E.completenessClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
