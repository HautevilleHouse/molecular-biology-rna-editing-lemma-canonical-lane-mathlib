import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingMechanismPackage where
  deaminasePresent : Prop
  editingSite : Nat
  baseChange : Prop
  editingEfficiency : Prop

def editingMechanismClosed (pkg : EditingMechanismPackage) : Prop :=
  pkg.deaminasePresent ∧ pkg.baseChange ∧ pkg.editingEfficiency

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
