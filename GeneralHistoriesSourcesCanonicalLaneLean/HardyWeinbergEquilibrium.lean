import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  alleleFrequencies : population → Prop
  genotypeFrequencies : population → Prop
  equilibriumCondition : Prop
  randomMatingAssumption : Prop
  equilibriumReached : Prop

structure HardyWeinbergEvidence (P : HardyWeinbergPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  randomMatingAssumptionClosed : P.randomMatingAssumption
  equilibriumReachedClosed : P.equilibriumReached

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.equilibriumCondition ∧ P.randomMatingAssumption ∧ P.equilibriumReached

theorem hardy_weinberg_closed_from_evidence (P : HardyWeinbergPackage) (E : HardyWeinbergEvidence P) :
    HardyWeinbergClosed P := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.randomMatingAssumptionClosed E.equilibriumReachedClosed)

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse