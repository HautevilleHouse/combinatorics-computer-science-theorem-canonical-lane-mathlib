import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedObject.WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatoricsComputerScienceTheoremCanonicalLaneLean
end HautevilleHouse
