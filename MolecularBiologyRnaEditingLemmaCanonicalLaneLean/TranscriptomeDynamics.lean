import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure TranscriptomeDynamicsPackage where
  transcriptionRate : Nat
  editingRate : Nat
  degradationRate : Nat
  steadyState : Prop

def transcriptomeDynamicsClosed (pkg : TranscriptomeDynamicsPackage) : Prop :=
  pkg.steadyState

theorem transcriptome_dynamics_closed_intro (pkg : TranscriptomeDynamicsPackage) (h : pkg.steadyState) : transcriptomeDynamicsClosed pkg := h

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
