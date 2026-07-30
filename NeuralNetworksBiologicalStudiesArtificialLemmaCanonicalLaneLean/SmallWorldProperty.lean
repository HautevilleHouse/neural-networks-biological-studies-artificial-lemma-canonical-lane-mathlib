import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure SmallWorldProperty where
  averagePathLength : ℕ
  clusteringCoefficient : ℝ
  rewiringProbability : ℝ
  smallWorldCoefficient : ℝ

def SmallWorldCondition (S : SmallWorldProperty) : Prop :=
  S.smallWorldCoefficient > 1 ∧ S.clusteringCoefficient > 0

theorem small_world_condition_holds (S : SmallWorldProperty) (h : SmallWorldCondition S) :
  S.smallWorldCoefficient > 1 := h.1

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse