import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure AppliedSimilarityProblem where
  problemName : String
  scales : DimensionalScales
  transformation : SimilarityTransform
  piBuckingham : BuckinghamPiTheorem

define problemSolution (p : AppliedSimilarityProblem) : Prop :=
  piTheoremClosure p.piBuckingham ∧ invarianceUnderSimilarity p.transformation

theorem problemSolutionAdmissible (p : AppliedSimilarityProblem) : problemSolution p := by
  exact And.intro (piTheoremClosed p.piBuckingham) (invarianceUnderSimilarity p.transformation)

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
