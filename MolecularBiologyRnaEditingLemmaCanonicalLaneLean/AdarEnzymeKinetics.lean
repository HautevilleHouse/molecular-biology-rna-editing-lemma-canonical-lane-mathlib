import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaEditingLemmaCanonicalLaneLean.RNAEditingBasic

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure ADARKineticsModel where
  adarIsoformType : String
  bindingAffinity : Float
  catalyticRate : Float
  substrateConcentration : Float
  productFormationRate : Float
  bindingAffinityMeasured : Prop
  catalyticRateMeasured : Prop
  productFormationRateComputed : Prop

structure ADARKineticsEvidence (K : ADARKineticsModel) where
  bindingAffinityMeasuredClosed : K.bindingAffinityMeasured
  catalyticRateMeasuredClosed : K.catalyticRateMeasured
  productFormationRateComputedClosed : K.productFormationRateComputed

def ADARKineticsClosed (K : ADARKineticsModel) : Prop :=
  K.bindingAffinityMeasured ∧ K.catalyticRateMeasured ∧ K.productFormationRateComputed

theorem adar_kinetics_closed_from_evidence (K : ADARKineticsModel)
    (E : ADARKineticsEvidence K) : ADARKineticsClosed K := by
  exact And.intro E.bindingAffinityMeasuredClosed
    (And.intro E.catalyticRateMeasuredClosed E.productFormationRateComputedClosed)

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse