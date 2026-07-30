import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaEditingLemmaCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : EditingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EditingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse