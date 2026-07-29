import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure ChurchTuringThesisPackage where
  computableFunction : Type u
  turingMachineModel : Type v
  lambdaCalculusModel : Type w
  equivalence : Prop
  thesisStatement : Prop

structure ChurchTuringThesisEvidence (C : ChurchTuringThesisPackage) where
  equivalenceClosed : C.equivalence
  thesisStatementClosed : C.thesisStatement

def ChurchTuringThesisClosed (C : ChurchTuringThesisPackage) : Prop :=
  C.equivalence ∧ C.thesisStatement

theorem church_turing_thesis_closed_from_evidence (C : ChurchTuringThesisPackage)
    (E : ChurchTuringThesisEvidence C) : ChurchTuringThesisClosed C := by
  exact And.intro E.equivalenceClosed E.thesisStatementClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
