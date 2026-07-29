import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure DimensionVector where
  length : ℤ
  mass : ℤ
  time : ℤ
  temperature : ℤ
  amount : ℤ
deriving DecidableEq

def dimensionZero : DimensionVector := ⟨0,0,0,0,0⟩

structure PhysicalQuantity where
  value : ℝ
  dimension : DimensionVector
  unit : String
  source : String

structure SimilarityScalingFactor where
  factor : ℝ
  transformedDimension : DimensionVector
  valid : Prop

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse