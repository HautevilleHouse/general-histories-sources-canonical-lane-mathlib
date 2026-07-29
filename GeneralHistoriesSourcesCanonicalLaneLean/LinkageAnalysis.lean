import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure LinkagePackage where
  loci : Type u
  recombinationFraction : loci → loci → ℝ
  lodScore : loci → loci → ℝ
  linkageSignificant : Prop
  recombinationMap : Prop

structure LinkageEvidence (L : LinkagePackage) where
  linkageSignificantClosed : L.linkageSignificant
  recombinationMapClosed : L.recombinationMap

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.linkageSignificant ∧ L.recombinationMap

theorem linkage_closed_from_evidence (L : LinkagePackage) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.linkageSignificantClosed E.recombinationMapClosed

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse