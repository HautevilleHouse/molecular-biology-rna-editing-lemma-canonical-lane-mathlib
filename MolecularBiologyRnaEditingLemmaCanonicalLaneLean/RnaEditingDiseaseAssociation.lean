import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaEditingLemmaCanonicalLaneLean.RNAEditingFunctionalImpact

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure DiseaseAssociationModel where
  editedTranscript : String
  diseaseName : String
  statisticalSignificance : Float
  oddsRatio : Float
  confidenceInterval : (Float × Float)
  significanceThresholdMet : Prop
  oddsRatioSignificant : Prop
  confidenceIntervalNarrow : Prop

structure DiseaseAssociationEvidence (D : DiseaseAssociationModel) where
  significanceThresholdMetClosed : D.significanceThresholdMet
  oddsRatioSignificantClosed : D.oddsRatioSignificant
  confidenceIntervalNarrowClosed : D.confidenceIntervalNarrow

def DiseaseAssociationClosed (D : DiseaseAssociationModel) : Prop :=
  D.significanceThresholdMet ∧ D.oddsRatioSignificant ∧ D.confidenceIntervalNarrow

theorem disease_association_closed_from_evidence (D : DiseaseAssociationModel)
    (E : DiseaseAssociationEvidence D) : DiseaseAssociationClosed D := by
  exact And.intro E.significanceThresholdMetClosed
    (And.intro E.oddsRatioSignificantClosed E.confidenceIntervalNarrowClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse