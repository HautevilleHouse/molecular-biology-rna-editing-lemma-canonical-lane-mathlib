import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaEditingLemmaCanonicalLaneLean.ADAREnzymeKinetics

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingSitePredictionModel where
  genomicSequence : String
  predictedSites : List Nat
  sequenceMotifFeatures : Prop
  structuralAccessibility : Prop
  conservationScore : Float
  motifValidated : Prop
  accessibilityValidated : Prop
  conservationThresholdMet : Prop

structure EditingSitePredictionEvidence (P : EditingSitePredictionModel) where
  motifValidatedClosed : P.motifValidated
  accessibilityValidatedClosed : P.structuralAccessibility
  conservationThresholdMetClosed : P.conservationThresholdMet

def EditingSitePredictionClosed (P : EditingSitePredictionModel) : Prop :=
  P.motifValidated ∧ P.structuralAccessibility ∧ P.conservationThresholdMet

theorem editing_site_prediction_closed_from_evidence (P : EditingSitePredictionModel)
    (E : EditingSitePredictionEvidence P) : EditingSitePredictionClosed P := by
  exact And.intro E.motifValidatedClosed
    (And.intro E.accessibilityValidatedClosed E.conservationThresholdMetClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse