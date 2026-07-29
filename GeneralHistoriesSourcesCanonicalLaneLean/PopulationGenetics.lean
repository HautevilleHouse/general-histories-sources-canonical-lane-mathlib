import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure PopulationGeneticsPackage where
  population : Type u
  alleleFrequencies : population → ℝ
  genotypeFrequencies : population → ℝ
  selectionCoefficient : ℝ
  fitnessModel : Prop
  alleleFrequencyChange : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  fitnessModelClosed : P.fitnessModel
  alleleFrequencyChangeClosed : P.alleleFrequencyChange

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.fitnessModel ∧ P.alleleFrequencyChange

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.fitnessModelClosed E.alleleFrequencyChangeClosed

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse