import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure PhylogeneticTreePackage where
  species : Type u
  distanceMatrix : species → species → ℝ
  treeTopology : Prop
  branchLengths : species → species → ℝ
  treeIsConsistent : Prop

structure PhylogeneticTreeEvidence (T : PhylogeneticTreePackage) where
  treeTopologyClosed : T.treeTopology
  branchLengthsClosed : ∀ s1 s2, T.branchLengths s1 s2 ≥ 0
  treeIsConsistentClosed : T.treeIsConsistent

def PhylogeneticTreeClosed (T : PhylogeneticTreePackage) : Prop :=
  T.treeTopology ∧ T.treeIsConsistent

theorem phylogenetic_tree_closed_from_evidence (T : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence T) :
    PhylogeneticTreeClosed T := by
  exact And.intro E.treeTopologyClosed E.treeIsConsistentClosed

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse