import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure MaturingStemLoopPackage where
  adRnaBindingSite : Prop
  editingEnzymeRecruited : Prop
  stemLoopFormed : Prop
  baseDeaminationInitiated : Prop

structure MaturingStemLoopEvidence (M : MaturingStemLoopPackage) where
  adRnaBindingSiteClosed : M.adRnaBindingSite
  editingEnzymeRecruitedClosed : M.editingEnzymeRecruited
  stemLoopFormedClosed : M.stemLoopFormed
  baseDeaminationInitiatedClosed : M.baseDeaminationInitiated

def MaturingStemLoopClosed (M : MaturingStemLoopPackage) : Prop :=
  M.adRnaBindingSite ∧ M.editingEnzymeRecruited ∧ M.stemLoopFormed ∧ M.baseDeaminationInitiated

theorem maturing_stem_loop_closed_from_evidence (M : MaturingStemLoopPackage)
    (E : MaturingStemLoopEvidence M) : MaturingStemLoopClosed M := by
  exact And.intro E.adRnaBindingSiteClosed
    (And.intro E.editingEnzymeRecruitedClosed
      (And.intro E.stemLoopFormedClosed E.baseDeaminationInitiatedClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
