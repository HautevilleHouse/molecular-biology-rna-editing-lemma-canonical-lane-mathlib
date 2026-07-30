import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure RegulatoryNetworkPackage where
  networkTopology : Type
  feedbackLoops : Prop
  geneExpressionCorrelation : Prop
  editingRegulation : Prop

def regulatoryNetworkClosed (pkg : RegulatoryNetworkPackage) : Prop :=
  pkg.feedbackLoops ∧ pkg.geneExpressionCorrelation ∧ pkg.editingRegulation

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
