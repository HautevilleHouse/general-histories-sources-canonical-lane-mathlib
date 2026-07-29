import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralHistoriesSourcesCanonicalLaneLean

structure GeneExpressionPackage where
  genes : Type u
  expressionLevels : genes → ℝ
  differentialExpression : genes → Prop
  statisticalSignificance : Prop
  foldChange : ℝ

structure GeneExpressionEvidence (G : GeneExpressionPackage) where
  differentialExpressionClosed : ∀ g, G.differentialExpression g → G.expressionLevels g > 0
  statisticalSignificanceClosed : G.statisticalSignificance
  foldChangeClosed : G.foldChange ≥ 1

def GeneExpressionClosed (G : GeneExpressionPackage) : Prop :=
  G.statisticalSignificance ∧ (∀ g, G.differentialExpression g → G.expressionLevels g > 0)

theorem gene_expression_closed_from_evidence (G : GeneExpressionPackage) (E : GeneExpressionEvidence G) :
    GeneExpressionClosed G := by
  exact And.intro E.statisticalSignificanceClosed E.differentialExpressionClosed

end GeneralHistoriesSourcesCanonicalLaneLean
end HautevilleHouse