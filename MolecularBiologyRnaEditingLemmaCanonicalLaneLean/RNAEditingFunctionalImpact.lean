import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaEditingLemmaCanonicalLaneLean.RNAEditingSitePrediction

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure FunctionalImpactModel where
  editedTranscript : String
  proteinCodingChange : Prop
  splicingAlteration : Prop
  stabilityChange : Prop
  localizationChange : Prop
  codingChangeConfirmed : Prop
  splicingAlterationConfirmed : Prop
  stabilityChangeConfirmed : Prop
  localizationChangeConfirmed : Prop

structure FunctionalImpactEvidence (F : FunctionalImpactModel) where
  codingChangeConfirmedClosed : F.codingChangeConfirmed
  splicingAlterationConfirmedClosed : F.splicingAlterationConfirmed
  stabilityChangeConfirmedClosed : F.stabilityChangeConfirmed
  localizationChangeConfirmedClosed : F.localizationChangeConfirmed

def FunctionalImpactClosed (F : FunctionalImpactModel) : Prop :=
  F.codingChangeConfirmed ∧ F.splicingAlterationConfirmed ∧
  F.stabilityChangeConfirmed ∧ F.localizationChangeConfirmed

theorem functional_impact_closed_from_evidence (F : FunctionalImpactModel)
    (E : FunctionalImpactEvidence F) : FunctionalImpactClosed F := by
  exact And.intro E.codingChangeConfirmedClosed
    (And.intro E.splicingAlterationConfirmedClosed
      (And.intro E.stabilityChangeConfirmedClosed E.localizationChangeConfirmedClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse