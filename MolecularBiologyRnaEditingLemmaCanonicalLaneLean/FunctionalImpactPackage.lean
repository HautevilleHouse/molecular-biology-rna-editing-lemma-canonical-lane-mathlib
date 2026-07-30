import MolecularBiologyRnaEditingLemmaCanonicalLaneLean.EditingFrequencyDynamics

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingLemmaCanonicalLaneLean

structure FunctionalImpactPackage where
  proteinCodingChange : Prop
  regulatoryElementAlteration : Prop
  diseaseAssociation : Prop
  evolutionaryConservation : Prop

structure FunctionalImpactEvidence (P : FunctionalImpactPackage) where
  proteinCodingChangeClosed : P.proteinCodingChange
  regulatoryElementAlterationClosed : P.regulatoryElementAlteration
  diseaseAssociationClosed : P.diseaseAssociation
  evolutionaryConservationClosed : P.evolutionaryConservation

def FunctionalImpactClosed (P : FunctionalImpactPackage) : Prop :=
  P.proteinCodingChange ∧ P.regulatoryElementAlteration ∧ P.diseaseAssociation ∧ P.evolutionaryConservation

theorem functional_impact_closed_from_evidence (P : FunctionalImpactPackage) (E : FunctionalImpactEvidence P) :
    FunctionalImpactClosed P := by
  exact And.intro E.proteinCodingChangeClosed
    (And.intro E.regulatoryElementAlterationClosed
      (And.intro E.diseaseAssociationClosed E.evolutionaryConservationClosed))

end MolecularBiologyRnaEditingLemmaCanonicalLaneLean
end HautevilleHouse