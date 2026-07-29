import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure SatInstance where
  clauseSet : Type u
  satisfiability : Prop

structure SatAdmittedObject where
  instance : SatInstance
  clauseSetFinite : Prop
  formulaCNF : Prop
  satisfiabilityKnown : Prop

structure NPCompletePackage where
  reductionToSAT : SatAdmittedObject → Prop
  reductionPolynomial : Prop

structure NPCompleteEvidence (N : NPCompletePackage) where
  reductionToSATClosed : N.reductionToSAT
  reductionPolynomialClosed : N.reductionPolynomial

def NPCompleteClosed (N : NPCompletePackage) : Prop :=
  N.reductionToSAT ∧ N.reductionPolynomial

theorem np_complete_closed_from_evidence (N : NPCompletePackage) (E : NPCompleteEvidence N) : NPCompleteClosed N :=
  And.intro E.reductionToSATClosed E.reductionPolynomialClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse