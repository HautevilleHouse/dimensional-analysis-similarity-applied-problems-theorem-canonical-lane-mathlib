import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean

structure ScalingFactor where
  name: String
  dimension: PhysicalDimension
  scaleExponent: Float

structure SimilarityLawsPackage (B: BuckinghamPiPackage D) where
  scalingFactors: List ScalingFactor
  similarityConditions: Prop
  scaleInvarianceGroup: Prop
  physicalLawsPreserved: Prop

structure SimilarityLawsEvidence {B: BuckinghamPiPackage D} (S: SimilarityLawsPackage B) where
  similarityConditionsClosed: S.similarityConditions
  scaleInvarianceGroupClosed: S.scaleInvarianceGroup
  physicalLawsPreservedClosed: S.physicalLawsPreserved

def SimilarityLawsClosed {B: BuckinghamPiPackage D} (S: SimilarityLawsPackage B): Prop :=
  S.similarityConditions ∧ S.scaleInvarianceGroup ∧ S.physicalLawsPreserved

theorem similarity_laws_closed_from_evidence {B: BuckinghamPiPackage D} (S: SimilarityLawsPackage B) (E: SimilarityLawsEvidence S): SimilarityLawsClosed S := by
  exact And.intro E.similarityConditionsClosed (And.intro E.scaleInvarianceGroupClosed E.physicalLawsPreservedClosed)

end DimensionalAnalysisSimilarityAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse