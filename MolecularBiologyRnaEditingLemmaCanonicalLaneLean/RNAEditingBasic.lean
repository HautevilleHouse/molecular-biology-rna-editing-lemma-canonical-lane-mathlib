import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RNAEditingObject where
  rnaSequence : String
  editingSite : Nat
  editedBase : Char
  originalBase : Char
  editingEnzymePresence : Prop
  cellType : String
  editingFrequency : Float

structure RnaAdmittedObject where
  editingSiteConfirmed : Prop
  frequencyWithinPhysiologicalRange : Prop
  editingSiteConfirmedTerm : editingSiteConfirmed
  frequencyWithinPhysiologicalRangeTerm : frequencyWithinPhysiologicalRange
  conclusion : editingSiteConfirmed ∧ frequencyWithinPhysiologicalRange

def RnaWitnessClosed (O : RnaAdmittedObject) : Prop :=
  O.editingSiteConfirmed ∧ O.frequencyWithinPhysiologicalRange

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse