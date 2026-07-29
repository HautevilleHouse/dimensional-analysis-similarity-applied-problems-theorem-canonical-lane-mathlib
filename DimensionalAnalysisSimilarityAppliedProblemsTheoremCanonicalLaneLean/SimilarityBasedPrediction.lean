import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure Prediction where
  targetVariable : DimensionedQuantity
  dimensionlessExpression : DimensionlessGroup
  predictedValue : ℝ
  confidence : ℝ

structure SimilarityBasedPredictionPackage where
  predictions : List Prediction
  scalingModel : ModelScalingPackage
  experimentalValidation : Prop

structure SimilarityBasedPredictionEvidence (P : SimilarityBasedPredictionPackage) where
  predictionsConsistent : Prop
  experimentalValidationClosed : P.experimentalValidation

def SimilarityBasedPredictionClosed (P : SimilarityBasedPredictionPackage) : Prop :=
  P.experimentalValidation

theorem similarity_based_prediction_closed_from_evidence
    (P : SimilarityBasedPredictionPackage) (E : SimilarityBasedPredictionEvidence P) :
    SimilarityBasedPredictionClosed P :=
  E.experimentalValidationClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse