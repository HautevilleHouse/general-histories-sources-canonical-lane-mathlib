import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : Type u
  alignmentScore : sequences → sequences → ℝ
  gapPenalty : ℝ
  substitutionMatrix : Type v
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (A : SequenceAlignmentPackage) where
  alignmentScoreClosed : A.alignmentScore ≠ ∅
  gapPenaltyClosed : A.gapPenalty ≥ 0
  optimalAlignmentClosed : A.optimalAlignment

def SequenceAlignmentClosed (A : SequenceAlignmentPackage) : Prop :=
  A.optimalAlignment

theorem sequence_alignment_closed_from_evidence (A : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence A) :
    SequenceAlignmentClosed A := by
  exact E.optimalAlignmentClosed

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse