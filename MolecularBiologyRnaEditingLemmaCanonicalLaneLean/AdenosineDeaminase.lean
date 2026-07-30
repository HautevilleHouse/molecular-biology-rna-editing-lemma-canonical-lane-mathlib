import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure AdenosineDeaminasePackage where
  enzymeStructure : Type u
  catalyticDomain : Type v
  rnaBinding : Prop
  rnaBindingTerm : rnaBinding
  zincCoordination : Prop
  zincCoordinationTerm : zincCoordination
  catalyticActivity : Prop
  catalyticActivityTerm : catalyticActivity
  editingSpecificity : Prop
  editingSpecificityTerm : editingSpecificity

def AdenosineDeaminaseClosed (A : AdenosineDeaminasePackage) : Prop :=
  A.rnaBinding ∧ A.zincCoordination ∧ A.catalyticActivity ∧ A.editingSpecificity

theorem adenosine_deaminase_closed (A : AdenosineDeaminasePackage) : AdenosineDeaminaseClosed A := by
  exact And.intro A.rnaBindingTerm
    (And.intro A.zincCoordinationTerm
      (And.intro A.catalyticActivityTerm A.editingSpecificityTerm))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
