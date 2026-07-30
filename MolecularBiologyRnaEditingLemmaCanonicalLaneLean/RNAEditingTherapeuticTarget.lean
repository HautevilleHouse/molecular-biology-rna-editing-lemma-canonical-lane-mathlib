import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaEditingLemmaCanonicalLaneLean.RNAEditingDiseaseAssociation

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure TherapeuticTargetModel where
  editedTranscript : String
  drugMolecule : String
  bindingEfficiency : Float
  specificityScore : Float
  toxicityScore : Float
  bindingEfficiencyAdequate : Prop
  specificityHigh : Prop
  toxicityLow : Prop

structure TherapeuticTargetEvidence (T : TherapeuticTargetModel) where
  bindingEfficiencyAdequateClosed : T.bindingEfficiencyAdequate
  specificityHighClosed : T.specificityHigh
  toxicityLowClosed : T.toxicityLow

def TherapeuticTargetClosed (T : TherapeuticTargetModel) : Prop :=
  T.bindingEfficiencyAdequate ∧ T.specificityHigh ∧ T.toxicityLow

theorem therapeutic_target_closed_from_evidence (T : TherapeuticTargetModel)
    (E : TherapeuticTargetEvidence T) : TherapeuticTargetClosed T := by
  exact And.intro E.bindingEfficiencyAdequateClosed
    (And.intro E.specificityHighClosed E.toxicityLowClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse