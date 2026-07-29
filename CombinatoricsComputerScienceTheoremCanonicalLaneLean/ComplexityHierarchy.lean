import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure TimeConstructibleFunction where
  fn : ℕ → ℕ
  computable : Prop
  monotone : Prop

structure TimeHierarchyPackage where
  timeFunction : TimeConstructibleFunction
  strictInclusion : Prop
  diagonalization : Prop

structure TimeHierarchyEvidence (T : TimeHierarchyPackage) where
  strictInclusionClosed : T.strictInclusion
  diagonalizationClosed : T.diagonalization

def TimeHierarchyClosed (T : TimeHierarchyPackage) : Prop :=
  T.strictInclusion ∧ T.diagonalization

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchyPackage) (E : TimeHierarchyEvidence T) : TimeHierarchyClosed T :=
  And.intro E.strictInclusionClosed E.diagonalizationClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse