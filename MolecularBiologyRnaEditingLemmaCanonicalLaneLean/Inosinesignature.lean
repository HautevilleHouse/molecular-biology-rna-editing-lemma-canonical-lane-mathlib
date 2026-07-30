import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure InosineSignaturePackage where
  sequencingRead : Type u
  inosinePeakDetection : Prop
  inosinePeakDetectionTerm : inosinePeakDetection
  misincorporationProfile : Prop
  misincorporationProfileTerm : misincorporationProfile
  editingSiteAnnotation : Prop
  editingSiteAnnotationTerm : editingSiteAnnotation
  quantification : Prop
  quantificationTerm : quantification
  transcriptomeWideProfile : Prop
  transcriptomeWideProfileTerm : transcriptomeWideProfile

def InosineSignatureClosed (I : InosineSignaturePackage) : Prop :=
  I.inosinePeakDetection ∧ I.misincorporationProfile ∧ I.editingSiteAnnotation ∧ I.quantification ∧ I.transcriptomeWideProfile

theorem inosine_signature_closed (I : InosineSignaturePackage) : InosineSignatureClosed I := by
  exact And.intro I.inosinePeakDetectionTerm
    (And.intro I.misincorporationProfileTerm
      (And.intro I.editingSiteAnnotationTerm
        (And.intro I.quantificationTerm I.transcriptomeWideProfileTerm)))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
