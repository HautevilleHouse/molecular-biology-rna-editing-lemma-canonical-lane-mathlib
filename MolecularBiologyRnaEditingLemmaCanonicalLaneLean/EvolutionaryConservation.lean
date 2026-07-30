import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EvolutionaryConservationPackage where
  speciesList : List String
  editingSiteConservation : Prop
  sequenceHomology : Prop
  selectivePressure : Prop

def evolutionaryConservationClosed (pkg : EvolutionaryConservationPackage) : Prop :=
  pkg.editingSiteConservation ∧ pkg.sequenceHomology ∧ pkg.selectivePressure

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
