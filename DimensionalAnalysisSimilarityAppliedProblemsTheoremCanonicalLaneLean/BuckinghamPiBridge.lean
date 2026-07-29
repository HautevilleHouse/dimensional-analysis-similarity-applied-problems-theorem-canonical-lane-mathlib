import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure BuckinghamPiPackage {D : DimensionalAnalysisPackage} where
  physicalVariables : List D.quantity
  fundamentalDimensionsCount : Nat
  piGroups : List D.dimensionlessGroup
  piTheoremStatement : Prop
  scalingLawFromPi : Prop

structure BuckinghamPiEvidence {D : DimensionalAnalysisPackage} (B : BuckinghamPiPackage D) where
  piTheoremStatementClosed : B.piTheoremStatement
  scalingLawFromPiClosed : B.scalingLawFromPi

def BuckinghamPiClosed {D : DimensionalAnalysisPackage} (B : BuckinghamPiPackage D) : Prop :=
  B.piTheoremStatement ∧ B.scalingLawFromPi

theorem buckingham_pi_closed_from_evidence {D : DimensionalAnalysisPackage} (B : BuckinghamPiPackage D) (E : BuckinghamPiEvidence B) :
    BuckinghamPiClosed B := by
  exact And.intro E.piTheoremStatementClosed E.scalingLawFromPiClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse