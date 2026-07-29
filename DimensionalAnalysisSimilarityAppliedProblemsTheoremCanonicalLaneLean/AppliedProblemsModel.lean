import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure PhysicalSystem where
  description: String
  governingParameters: List DerivedQuantity
  variables: List DerivedQuantity
  boundaryConditions: Prop

structure AppliedProblemPackage (S: SimilarityLawsPackage B) where
  system: PhysicalSystem
  similaritySolution: Prop
  scalingAnalysisApplied: Prop
  experimentalValidation: Prop
  reducedModel: Prop

structure AppliedProblemEvidence {S: SimilarityLawsPackage B} (A: AppliedProblemPackage S) where
  similaritySolutionClosed: A.similaritySolution
  scalingAnalysisAppliedClosed: A.scalingAnalysisApplied
  reducedModelClosed: A.reducedModel

def AppliedProblemClosed {S: SimilarityLawsPackage B} (A: AppliedProblemPackage S): Prop :=
  A.similaritySolution ∧ A.scalingAnalysisApplied ∧ A.reducedModel

theorem applied_problem_closed_from_evidence {S: SimilarityLawsPackage B} (A: AppliedProblemPackage S) (E: AppliedProblemEvidence A): AppliedProblemClosed A := by
  exact And.intro E.similaritySolutionClosed (And.intro E.scalingAnalysisAppliedClosed E.reducedModelClosed)

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse