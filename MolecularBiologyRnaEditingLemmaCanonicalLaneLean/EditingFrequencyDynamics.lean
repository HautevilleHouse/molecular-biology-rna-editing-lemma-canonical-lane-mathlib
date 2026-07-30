import MolecularBiologyRnaEditingLemmaCanonicalLaneLean.RecodingSiteClassification

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingFrequencyDynamicsPackage where
  cellPopulation : Type u
  editingRate : Type v
  timeVarying : Prop
  tissueSpecificity : Prop
  environmentResponse : Prop

structure EditingFrequencyDynamicsEvidence (P : EditingFrequencyDynamicsPackage) where
  timeVaryingClosed : P.timeVarying
  tissueSpecificityClosed : P.tissueSpecificity
  environmentResponseClosed : P.environmentResponse

def EditingFrequencyDynamicsClosed (P : EditingFrequencyDynamicsPackage) : Prop :=
  P.timeVarying ∧ P.tissueSpecificity ∧ P.environmentResponse

theorem editing_frequency_dynamics_closed_from_evidence (P : EditingFrequencyDynamicsPackage) (E : EditingFrequencyDynamicsEvidence P) :
    EditingFrequencyDynamicsClosed P := by
  exact And.intro E.timeVaryingClosed
    (And.intro E.tissueSpecificityClosed E.environmentResponseClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse