import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure BinarySequence where
  length : ℕ
  bits : ℕ → ℕ

structure MartinLofTest where
  sequenceSet : Set BinarySequence
  effectiveCover : Prop
  measureZero : Prop

structure AlgorithmicRandomnessPackage where
  randomSequence : BinarySequence
  passesAllTests : MartinLofTest → Prop
  randomnessDefinition : Prop

structure AlgorithmicRandomnessEvidence (A : AlgorithmicRandomnessPackage) where
  passesAllTestsClosed : A.passesAllTests
  randomnessDefinitionClosed : A.randomnessDefinition

def AlgorithmicRandomnessClosed (A : AlgorithmicRandomnessPackage) : Prop :=
  A.passesAllTests ∧ A.randomnessDefinition

theorem algorithmic_randomness_closed_from_evidence (A : AlgorithmicRandomnessPackage) (E : AlgorithmicRandomnessEvidence A) : AlgorithmicRandomnessClosed A :=
  And.intro E.passesAllTestsClosed E.randomnessDefinitionClosed

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse