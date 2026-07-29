import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure Prototype where
  dimensionSet : List PhysicalDimension
  parameterValues : List ℝ

structure Model where
  scalingLaw : ScalingFactor → ℝ
  predictedPrototypeValue : ℝ

structure ModelScalingPackage where
  prototype : Prototype
  model : Model
  similarityConditionsMet : Prop
  scalingLawsValid : Prop

structure ModelScalingEvidence (M : ModelScalingPackage) where
  similarityConditionsMetClosed : M.similarityConditionsMet
  scalingLawsValidClosed : M.scalingLawsValid

def ModelScalingClosed (M : ModelScalingPackage) : Prop :=
  M.similarityConditionsMet ∧ M.scalingLawsValid

theorem model_scaling_closed_from_evidence (M : ModelScalingPackage)
    (E : ModelScalingEvidence M) : ModelScalingClosed M :=
  And.intro E.similarityConditionsMetClosed E.scalingLawsValidClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse