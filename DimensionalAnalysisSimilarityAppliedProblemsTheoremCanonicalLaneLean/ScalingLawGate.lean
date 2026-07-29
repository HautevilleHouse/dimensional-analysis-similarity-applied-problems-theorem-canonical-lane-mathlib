import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure ScalingLawPackage {D : DimensionalAnalysisPackage} where
  originalSystem : D.quantity -> Prop
  scaledSystem : D.quantity -> Prop
  scalingFactor : D.dimension -> D.quantity -> D.quantity
  invarianceCondition : Prop
  similaritySolution : Prop

structure ScalingLawEvidence {D : DimensionalAnalysisPackage} (P : ScalingLawPackage D) where
  invarianceConditionClosed : P.invarianceCondition
  similaritySolutionClosed : P.similaritySolution

def ScalingLawClosed {D : DimensionalAnalysisPackage} (P : ScalingLawPackage D) : Prop :=
  P.invarianceCondition ∧ P.similaritySolution

theorem scaling_law_closed_from_evidence {D : DimensionalAnalysisPackage} (P : ScalingLawPackage D) (E : ScalingLawEvidence P) :
    ScalingLawClosed P := by
  exact And.intro E.invarianceConditionClosed E.similaritySolutionClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse