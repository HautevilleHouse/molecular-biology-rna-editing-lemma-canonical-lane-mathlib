import MolecularBiologyRnaEditingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure ADAREditingPackage where
  dsRNAStructure : Prop
  ADARBinding : Prop
  deaminationActivity : Prop
  editingSpecificity : Prop
  mutationFrequency : Prop

structure ADAREditingEvidence (P : ADAREditingPackage) where
  dsRNAStructureClosed : P.dsRNAStructure
  ADARBindingClosed : P.ADARBinding
  deaminationActivityClosed : P.deaminationActivity
  editingSpecificityClosed : P.editingSpecificity
  mutationFrequencyClosed : P.mutationFrequency

def ADAREditingClosed (P : ADAREditingPackage) : Prop :=
  P.dsRNAStructure ∧ P.ADARBinding ∧ P.deaminationActivity ∧ P.editingSpecificity ∧ P.mutationFrequency

theorem adar_editing_closed_from_evidence (P : ADAREditingPackage) (E : ADAREditingEvidence P) :
    ADAREditingClosed P := by
  exact And.intro E.dsRNAStructureClosed
    (And.intro E.ADARBindingClosed
      (And.intro E.deaminationActivityClosed
        (And.intro E.editingSpecificityClosed E.mutationFrequencyClosed)))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse