import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure ComplexityClass where
  name : String
  timeBound : Nat -> Nat
  spaceBound : Nat -> Nat

structure HierarchyTheoremPackage where
  classA : ComplexityClass
  classB : ComplexityClass
  strictInclusion : Prop
  diagonalizationProof : Prop

structure HierarchyTheoremEvidence (H : HierarchyTheoremPackage) where
  strictInclusionClosed : H.strictInclusion
  diagonalizationProofClosed : H.diagonalizationProof

def HierarchyTheoremClosed (H : HierarchyTheoremPackage) : Prop :=
  H.strictInclusion ∧ H.diagonalizationProof

theorem hierarchy_theorem_closed_from_evidence (H : HierarchyTheoremPackage)
    (E : HierarchyTheoremEvidence H) : HierarchyTheoremClosed H :=
  And.intro E.strictInclusionClosed E.diagonalizationProofClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse