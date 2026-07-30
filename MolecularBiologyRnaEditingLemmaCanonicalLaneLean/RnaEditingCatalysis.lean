import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaEditingCatalysis where
  deaminationStep : Prop
  uracilRecognition : Prop
  basePairStabilization : Prop

structure RnaEditingCatalysisPackage where
  catalysis : RnaEditingCatalysis
  adarTethering : Prop
  catalyticLoopPositioning : Prop
  productFormation : Prop

structure RnaEditingCatalysisEvidence (C : RnaEditingCatalysisPackage) where
  adarTetheringClosed : C.adarTethering
  catalyticLoopPositioningClosed : C.catalyticLoopPositioning
  productFormationClosed : C.productFormation

def RnaEditingCatalysisClosed (C : RnaEditingCatalysisPackage) : Prop :=
  C.adarTethering ∧ C.catalyticLoopPositioning ∧ C.productFormation

theorem rna_editing_catalysis_closed_from_evidence (C : RnaEditingCatalysisPackage)
    (E : RnaEditingCatalysisEvidence C) : RnaEditingCatalysisClosed C :=
  And.intro E.adarTetheringClosed
    (And.intro E.catalyticLoopPositioningClosed E.productFormationClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse