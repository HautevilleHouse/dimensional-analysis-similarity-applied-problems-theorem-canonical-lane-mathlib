import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure ApplicationProblemSolutionPackage where
  problemStatement : String
  similarityAnalysisApplied : Prop
  reducedModelSolution : Prop
  solutionInterpreted : Prop
  similarityAnalysisAppliedTerm : similarityAnalysisApplied
  reducedModelSolutionTerm : reducedModelSolution
  solutionInterpretedTerm : solutionInterpreted

structure ApplicationProblemSolutionEvidence (A : ApplicationProblemSolutionPackage) where
  similarityAnalysisAppliedClosed : A.similarityAnalysisApplied
  reducedModelSolutionClosed : A.reducedModelSolution
  solutionInterpretedClosed : A.solutionInterpreted

def ApplicationProblemSolutionClosed (A : ApplicationProblemSolutionPackage) : Prop :=
  A.similarityAnalysisApplied ∧ A.reducedModelSolution ∧ A.solutionInterpreted

theorem application_problem_solution_closed_from_evidence
    (A : ApplicationProblemSolutionPackage) (E : ApplicationProblemSolutionEvidence A) :
    ApplicationProblemSolutionClosed A := by
  exact And.intro E.similarityAnalysisAppliedClosed
    (And.intro E.reducedModelSolutionClosed E.solutionInterpretedClosed)

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse