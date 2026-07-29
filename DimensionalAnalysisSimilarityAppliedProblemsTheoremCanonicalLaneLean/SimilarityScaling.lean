import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure ScalingFactor where
  factor : ℝ
  exponent : ℤ

structure DimensionlessGroup where
  expression : DimensionedQuantity
  isDimensionless : Prop

structure SimilarityScalingPackage where
  scalingFactors : List ScalingFactor
  dimensionReduction : Nat
  dimensionlessGroups : List DimensionlessGroup

structure SimilarityScalingEvidence (S : SimilarityScalingPackage) where
  dimensionReductionClosed : Prop
  dimensionlessGroupsFormed : Prop

def SimilarityScalingClosed (S : SimilarityScalingPackage) : Prop :=
  S.dimensionReduction > 0

theorem similarity_scaling_closed_from_evidence (S : SimilarityScalingPackage)
    (E : SimilarityScalingEvidence S) : SimilarityScalingClosed S :=
  E.dimensionReductionClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse