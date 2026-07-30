import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaEditingPathwayPackage where
  editingSite : Type u
  editingEnzyme : Type v
  rnaTranscript : Type w
  deaminationReaction : Prop
  transcriptRecognition : Prop
  editingComplexFormation : Prop
  editingCatalysis : Prop
  baseModification : Prop

structure RnaEditingPathwayEvidence (P : RnaEditingPathwayPackage) where
  deaminationReactionClosed : P.deaminationReaction
  transcriptRecognitionClosed : P.transcriptRecognition
  editingComplexFormationClosed : P.editingComplexFormation
  editingCatalysisClosed : P.editingCatalysis
  baseModificationClosed : P.baseModification

def RnaEditingPathwayClosed (P : RnaEditingPathwayPackage) : Prop :=
  P.deaminationReaction ∧ P.transcriptRecognition ∧ P.editingComplexFormation ∧ P.editingCatalysis ∧ P.baseModification

theorem rna_editing_pathway_closed_from_evidence (P : RnaEditingPathwayPackage) (E : RnaEditingPathwayEvidence P) : RnaEditingPathwayClosed P := by
  exact And.intro E.deaminationReactionClosed
    (And.intro E.transcriptRecognitionClosed
      (And.intro E.editingComplexFormationClosed
        (And.intro E.editingCatalysisClosed E.baseModificationClosed)))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
