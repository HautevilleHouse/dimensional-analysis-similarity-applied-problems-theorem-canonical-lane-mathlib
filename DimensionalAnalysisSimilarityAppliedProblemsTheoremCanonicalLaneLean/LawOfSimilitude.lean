import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure LawOfSimilitudePackage where
  dimensionlessParameters : List String
  similarityCondition : Prop
  scalingLaws : List String
  similarityConditionTerm : similarityCondition
  scalingLawsTerm : scalingLaws

structure LawOfSimilitudeEvidence (L : LawOfSimilitudePackage) where
  similarityConditionClosed : L.similarityCondition
  scalingLawsClosed : L.scalingLaws

def LawOfSimilitudeClosed (L : LawOfSimilitudePackage) : Prop :=
  L.similarityCondition ∧ L.scalingLaws

theorem law_of_similitude_closed_from_evidence (L : LawOfSimilitudePackage)
    (E : LawOfSimilitudeEvidence L) : LawOfSimilitudeClosed L := by
  exact And.intro E.similarityConditionClosed E.scalingLawsClosed

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse