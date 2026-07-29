import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure DimensionMatrix where
  exponents: List Int
  rows: Nat
  cols: Nat

structure BuckinghamPiPackage (D: DimensionalAnalysisPackage) where
  nVariables: Nat
  kBaseDimensions: Nat
  piGroups: Nat
  dimensionMatrix: DimensionMatrix
  rankCondition: Prop
  dimensionlessGroups: List (List (DerivedQuantity → Float))
  piTheoremSatisfied: Prop

structure BuckinghamPiEvidence {D: DimensionalAnalysisPackage} (B: BuckinghamPiPackage D) where
  nVariablesClosed: B.nVariables ≥ B.kBaseDimensions
  rankConditionClosed: B.rankCondition
  dimensionlessGroupsClosed: B.dimensionlessGroups ≠ []
  piTheoremSatisfiedClosed: B.piTheoremSatisfied

def BuckinghamPiClosed {D: DimensionalAnalysisPackage} (B: BuckinghamPiPackage D): Prop :=
  B.piTheoremSatisfied ∧ B.rankCondition

theorem buckingham_pi_closed_from_evidence {D: DimensionalAnalysisPackage} (B: BuckinghamPiPackage D) (E: BuckinghamPiEvidence B): BuckinghamPiClosed B := by
  exact And.intro E.piTheoremSatisfiedClosed E.rankConditionClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse