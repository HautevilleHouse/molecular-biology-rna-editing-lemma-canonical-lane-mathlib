import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure EditingEnzymeExpressionPackage where
  geneExpressionLevel : Prop
  geneExpressionLevelTerm : geneExpressionLevel
  tissueSpecificity : Prop
  tissueSpecificityTerm : tissueSpecificity
  developmentalRegulation : Prop
  developmentalRegulationTerm : developmentalRegulation
  subcellularLocalization : Prop
  subcellularLocalizationTerm : subcellularLocalization
  regulationBySignaling : Prop
  regulationBySignalingTerm : regulationBySignaling

def EditingEnzymeExpressionClosed (E : EditingEnzymeExpressionPackage) : Prop :=
  E.geneExpressionLevel ∧ E.tissueSpecificity ∧ E.developmentalRegulation ∧ E.subcellularLocalization ∧ E.regulationBySignaling

theorem editing_enzyme_expression_closed (E : EditingEnzymeExpressionPackage) : EditingEnzymeExpressionClosed E := by
  exact And.intro E.geneExpressionLevelTerm
    (And.intro E.tissueSpecificityTerm
      (And.intro E.developmentalRegulationTerm
        (And.intro E.subcellularLocalizationTerm E.regulationBySignalingTerm)))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse
