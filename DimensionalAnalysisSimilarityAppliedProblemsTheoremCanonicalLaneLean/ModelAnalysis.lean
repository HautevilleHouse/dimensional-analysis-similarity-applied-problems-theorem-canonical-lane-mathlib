import DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean.SimilarityTransformation

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure ScaledModel (M : DimensionalMatrix) where
  prototype : PhysicalQuantity → Prop
  model : PhysicalQuantity → Prop
  scalingFactor : SimilarityScalingFactor
  modelLaw : ∀ (q : PhysicalQuantity), prototype q → model (ScaledQuantity q scalingFactor.factor)

structure DimensionlessParameter where
  name : String
  expression : List PhysicalQuantity → ℝ
  dimensionless : ∀ (inputs : List PhysicalQuantity), DimensionVector.length (expression inputs) = 0
  meaning : String

structure AppliedProblem where
  problemDescription : String
  governingEquations : List (List PhysicalQuantity → Prop)
  boundaryConditions : Prop
  similaritySolution : Prop
  modelEvidence : ScaledModel (DimensionalMatrix.mk 0 0 [] 0 rfl)
  dimensionlessParams : List DimensionlessParameter
  resultsApplied : Prop

def ModelAnalysisClosed (P : AppliedProblem) : Prop :=
  P.similaritySolution ∧ P.resultsApplied

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse