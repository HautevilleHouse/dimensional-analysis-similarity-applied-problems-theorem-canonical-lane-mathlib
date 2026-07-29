import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

def bridgeClosed (A: AdmissibleClass): Prop :=
  A.gateWitness

theorem bridge_from_admissible_class (A: AdmissibleClass): bridgeClosed A := by
  exact A.gateWitness

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse