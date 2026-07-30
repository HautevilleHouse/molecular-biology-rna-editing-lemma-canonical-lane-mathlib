import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaTranscript where
  sequence : String
  secondaryStructure : Prop
  doubleStrandedRegions : List (Nat × Nat)
  editingSites : List Nat
  adarBindingAffinity : Nat

structure RnaTranscriptStructurePackage where
  transcript : RnaTranscript
  doubleStrandedFormation : Prop
  editingSiteRecognition : Prop
  catalyticLoopFormed : Prop

structure RnaTranscriptStructureEvidence (R : RnaTranscriptStructurePackage) where
  doubleStrandedFormationClosed : R.doubleStrandedFormation
  editingSiteRecognitionClosed : R.editingSiteRecognition
  catalyticLoopFormedClosed : R.catalyticLoopFormed

def RnaTranscriptStructureClosed (R : RnaTranscriptStructurePackage) : Prop :=
  R.doubleStrandedFormation ∧ R.editingSiteRecognition ∧ R.catalyticLoopFormed

theorem rna_transcript_structure_closed_from_evidence (R : RnaTranscriptStructurePackage)
    (E : RnaTranscriptStructureEvidence R) : RnaTranscriptStructureClosed R :=
  And.intro E.doubleStrandedFormationClosed
    (And.intro E.editingSiteRecognitionClosed E.catalyticLoopFormedClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse