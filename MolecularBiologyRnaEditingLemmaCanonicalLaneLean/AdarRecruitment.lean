import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure AdarRecruitmentPackage where
  doubleStrandedRnaDetected : Prop
  adarIsoformBound : Prop
  catalyticDomainAligned : Prop
  hydrolyticDeamination : Prop

structure AdarRecruitmentEvidence (A : AdarRecruitmentPackage) where
  doubleStrandedRnaDetectedClosed : A.doubleStrandedRnaDetected
  adarIsoformBoundClosed : A.adarIsoformBound
  catalyticDomainAlignedClosed : A.catalyticDomainAligned
  hydrolyticDeaminationClosed : A.hydrolyticDeamination

def AdarRecruitmentClosed (A : AdarRecruitmentPackage) : Prop :=
  A.doubleStrandedRnaDetected ∧ A.adarIsoformBound ∧ A.catalyticDomainAligned ∧ A.hydrolyticDeamination

theorem adar_recruitment_closed_from_evidence (A : AdarRecruitmentPackage)
    (E : AdarRecruitmentEvidence A) : AdarRecruitmentClosed A := by
  exact And.intro E.doubleStrandedRnaDetectedClosed
    (And.intro E.adarIsoformBoundClosed
      (And.intro E.catalyticDomainAlignedClosed E.hydrolyticDeaminationClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
