import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure AdmissibleClass where
  object : GHSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GHSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse