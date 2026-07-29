import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure AppliedProblem where
  description : String
  relevantDimensions : List PhysicalDimension
  similarityCondition : Prop

structure AppliedSimilarityProblemsPackage where
  problems : List AppliedProblem
  analysisMethod : DimensionalAnalysisPackage → SimilarityScalingPackage → BuckinghamPiTheoremPackage
  solutionValid : Prop

structure AppliedSimilarityProblemsEvidence (A : AppliedSimilarityProblemsPackage) where
  analysisMethodApplied : Prop
  solutionValidClosed : A.solutionValid

def AppliedSimilarityProblemsClosed (A : AppliedSimilarityProblemsPackage) : Prop :=
  A.solutionValid

theorem applied_similarity_problems_closed_from_evidence
    (A : AppliedSimilarityProblemsPackage) (E : AppliedSimilarityProblemsEvidence A) :
    AppliedSimilarityProblemsClosed A :=
  E.solutionValidClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse