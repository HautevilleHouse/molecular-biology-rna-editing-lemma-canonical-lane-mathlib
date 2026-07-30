import MolecularBiologyRnaEditingLemmaCanonicalLaneLean.ADAREditingPackage

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RecodingSiteClassificationPackage where
  rnaTranscript : Type u
  targetCodon : Type v
  recodingType : Prop
  synonymousVsNonsynonymous : Prop
  spliceImpact : Prop
  rnaSecondaryStructureProximity : Prop

structure RecodingSiteClassificationEvidence (P : RecodingSiteClassificationPackage) where
  recodingTypeClosed : P.recodingType
  synonymousVsNonsynonymousClosed : P.synonymousVsNonsynonymous
  spliceImpactClosed : P.spliceImpact
  rnaSecondaryStructureProximityClosed : P.rnaSecondaryStructureProximity

def RecodingSiteClassificationClosed (P : RecodingSiteClassificationPackage) : Prop :=
  P.recodingType ∧ P.synonymousVsNonsynonymous ∧ P.spliceImpact ∧ P.rnaSecondaryStructureProximity

theorem recoding_site_classification_closed_from_evidence (P : RecodingSiteClassificationPackage) (E : RecodingSiteClassificationEvidence P) :
    RecodingSiteClassificationClosed P := by
  exact And.intro E.recodingTypeClosed
    (And.intro E.synonymousVsNonsynonymousClosed
      (And.intro E.spliceImpactClosed E.rnaSecondaryStructureProximityClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse