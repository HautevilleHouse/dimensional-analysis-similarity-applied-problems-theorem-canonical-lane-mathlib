import DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean.BuckinghamPiTheorem

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure SimilarityTransformation (M : DimensionalMatrix) where
  scalingVector : List ℝ
  transformedGroup : PiGroup
  invariantRelation : Prop
  scaledSolution : Prop
  originalSolution : Prop
  similarityLaw : invariantRelation → scaledSolution = originalSolution

structure ScalingExponent (M : DimensionalMatrix) where
  exponent : ℤ
  exponentValid : exponent ≠ 0
  groupIndex : ℕ
  groupIndexBound : groupIndex < M.cols - M.rank

def ScaledQuantity (q : PhysicalQuantity) (s : ℝ) : PhysicalQuantity :=
  { q with value := q.value * s }

def SimilarityClosed (M : DimensionalMatrix) (S : SimilarityTransformation M) : Prop :=
  S.invariantRelation ∧ S.similarityLaw

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse