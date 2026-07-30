import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure SmallWorldPackage where
  clusteringCoefficient : Float
  averagePathLength : Float
  smallWorldness : Float
  highClustering : Prop
  shortPathLength : Prop
  smallWorldClosed : Prop

structure SmallWorldEvidence (S : SmallWorldPackage) where
  clusteringHigh : S.clusteringCoefficient > 0.5
  pathLengthShort : S.averagePathLength < 10
  smallWorldClosedTerm : S.smallWorldClosed

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.clusteringCoefficient > 0.5 ∧ S.averagePathLength < 10 ∧ S.smallWorldClosed

theorem small_world_closed_from_evidence (S : SmallWorldPackage)
    (E : SmallWorldEvidence S) : SmallWorldClosed S := by
  exact And.intro E.clusteringHigh (And.intro E.pathLengthShort E.smallWorldClosedTerm)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse