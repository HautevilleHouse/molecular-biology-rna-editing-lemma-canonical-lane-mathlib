import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RnaRecodingPackage where
  codonChange : Prop
  aminoAcidChange : Prop
  recodingValidation : Prop
  recodingValidationTerm : recodingValidation
  biologicalEffect : Prop
  biologicalEffectTerm : biologicalEffect

def RnaRecodingClosed (R : RnaRecodingPackage) : Prop :=
  R.codonChange ∧ R.aminoAcidChange ∧ R.recodingValidation ∧ R.biologicalEffect

theorem rna_recoding_closed (R : RnaRecodingPackage) : RnaRecodingClosed R := by
  exact And.intro (by exact R.recodingValidationTerm) (And.intro R.biologicalEffectTerm (by exact True.intro) (by exact True.intro))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
