import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingAdmittedObject where
  transcript : RnaTranscript
  enzyme : AdarEnzymeKinetics
  editingSite : EditingSiteFeature
  catalysis : RnaEditingCatalysis
  conclusion : transcript.editingSites.contains editingSite.position ∧ catalysis.deaminationStep

structure EditingEndgameState where
  object : EditingAdmittedObject

def EditingWitnessClosed (O : EditingAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse