import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaAdmittedObject where
  transcript : Type
  editingSite : Prop
  ezymeComplex : Prop
  conclusion : editingSite ∧ ezymeComplex

structure AdmissibleClass where
  object : RnaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RnaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse