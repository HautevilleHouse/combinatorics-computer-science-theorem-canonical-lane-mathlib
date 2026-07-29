import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure HierarchyTheoremsPackage where
  timeComplexityClass : Nat → Type u
  spaceComplexityClass : Nat → Type v
  timeHierarchy : Prop
  spaceHierarchy : Prop

structure HierarchyTheoremsEvidence (H : HierarchyTheoremsPackage) where
  timeHierarchyClosed : H.timeHierarchy
  spaceHierarchyClosed : H.spaceHierarchy

def HierarchyTheoremsClosed (H : HierarchyTheoremsPackage) : Prop :=
  H.timeHierarchy ∧ H.spaceHierarchy

theorem hierarchy_theorems_closed_from_evidence (H : HierarchyTheoremsPackage)
    (E : HierarchyTheoremsEvidence H) : HierarchyTheoremsClosed H := by
  exact And.intro E.timeHierarchyClosed E.spaceHierarchyClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
