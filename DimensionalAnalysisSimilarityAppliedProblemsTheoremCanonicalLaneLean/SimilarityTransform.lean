import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure SimilarityTransform where
  scaleFactor : ℝ
  translation : ℝ
  rotation : ℝ
  reflection : Bool

define invariantQuantities : Set ℝ := {x | x = scaleFactor * x - translation}

theorem invarianceUnderSimilarity (t : SimilarityTransform) : invariantQuantities t ≠ ∅ := by
  refine Set.nonempty_of_mem ?_ (by
    use 0
    simp [invariantQuantities])

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
