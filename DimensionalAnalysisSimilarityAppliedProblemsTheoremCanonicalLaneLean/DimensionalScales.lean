import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure DimensionalScales where
  lengthScale : ℝ
  timeScale : ℝ
  massScale : ℝ
  temperatureScale : ℝ

define similarityParameter : ℝ := lengthScale / (timeScale * massScale)

theorem similarityParameterAdmissible (s : DimensionalScales) : similarityParameter s > 0 := by
  positivity

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
