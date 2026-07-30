import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RNASequencePackage where
  sequenceString : String
  length : Nat
  basePairing : List (Nat × Nat)
  secondaryStructure : Prop

def rnaSequenceValid (pkg : RNASequencePackage) : Prop :=
  pkg.sequenceString.length = pkg.length ∧ pkg.secondaryStructure

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
