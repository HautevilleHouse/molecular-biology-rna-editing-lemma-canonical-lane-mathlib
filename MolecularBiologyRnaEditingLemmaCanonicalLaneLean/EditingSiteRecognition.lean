import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingSiteFeature where
  position : Nat
  flankingSequence : String
  secondaryStructureContext : Prop
  conservationScore : Float

structure EditingSiteRecognitionPackage where
  features : List EditingSiteFeature
  recognitionCode : Prop
  sequenceSpecificity : Prop
  structuralAccessibility : Prop

structure EditingSiteRecognitionEvidence (E : EditingSiteRecognitionPackage) where
  recognitionCodeClosed : E.recognitionCode
  sequenceSpecificityClosed : E.sequenceSpecificity
  structuralAccessibilityClosed : E.structuralAccessibility

def EditingSiteRecognitionClosed (E : EditingSiteRecognitionPackage) : Prop :=
  E.recognitionCode ∧ E.sequenceSpecificity ∧ E.structuralAccessibility

theorem editing_site_recognition_closed_from_evidence (E : EditingSiteRecognitionPackage)
    (Ev : EditingSiteRecognitionEvidence E) : EditingSiteRecognitionClosed E :=
  And.intro Ev.recognitionCodeClosed
    (And.intro Ev.sequenceSpecificityClosed Ev.structuralAccessibilityClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse