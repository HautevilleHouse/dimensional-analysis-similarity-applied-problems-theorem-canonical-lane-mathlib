import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure PhysicalDimension where
  massExponent : ℤ
  lengthExponent : ℤ
  timeExponent : ℤ
  temperatureExponent : ℤ
  currentExponent : ℤ
  amountExponent : ℤ
  luminousIntensityExponent : ℤ

structure DimensionedQuantity where
  value : ℝ
  dimension : PhysicalDimension

structure DimensionalAnalysisPackage where
  quantities : List DimensionedQuantity
  dimensionMatrix : Matrix (Fin 7) (Fin (List.length quantities)) ℤ
  rankCondition : Prop

structure DimensionalAnalysisEvidence (D : DimensionalAnalysisPackage) where
  rankConditionClosed : D.rankCondition
  dimensionallyConsistent : Prop

def DimensionalAnalysisClosed (D : DimensionalAnalysisPackage) : Prop :=
  D.rankCondition

theorem dimensional_analysis_closed_from_evidence (D : DimensionalAnalysisPackage)
    (E : DimensionalAnalysisEvidence D) : DimensionalAnalysisClosed D :=
  E.rankConditionClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse