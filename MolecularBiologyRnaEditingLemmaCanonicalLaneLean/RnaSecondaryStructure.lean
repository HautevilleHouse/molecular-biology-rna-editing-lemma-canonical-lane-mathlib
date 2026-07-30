import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaSecondaryStructurePackage where
  transcriptSequence : Prop
  foldingPathway : Prop
  doubleStrandFormation : Prop
  mismatchRecognition : Prop

structure RnaSecondaryStructureEvidence (R : RnaSecondaryStructurePackage) where
  transcriptSequenceClosed : R.transcriptSequence
  foldingPathwayClosed : R.foldingPathway
  doubleStrandFormationClosed : R.doubleStrandFormation
  mismatchRecognitionClosed : R.mismatchRecognition

def RnaSecondaryStructureClosed (R : RnaSecondaryStructurePackage) : Prop :=
  R.transcriptSequence ∧ R.foldingPathway ∧ R.doubleStrandFormation ∧ R.mismatchRecognition

theorem rna_secondary_structure_closed_from_evidence (R : RnaSecondaryStructurePackage)
    (E : RnaSecondaryStructureEvidence R) : RnaSecondaryStructureClosed R := by
  exact And.intro E.transcriptSequenceClosed
    (And.intro E.foldingPathwayClosed
      (And.intro E.doubleStrandFormationClosed E.mismatchRecognitionClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
