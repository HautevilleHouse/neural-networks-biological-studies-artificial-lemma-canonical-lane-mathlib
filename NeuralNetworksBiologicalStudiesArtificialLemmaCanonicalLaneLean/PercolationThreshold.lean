import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure PercolationThresholdPackage where
  criticalProbability : ℝ
  clusterSizeDistribution : Prop
  percolationProbability : ℝ → ℝ
  phaseTransition : Prop

def PercolationThresholdCondition (P : PercolationThresholdPackage) : Prop :=
  P.criticalProbability ∈ Set.Ioo (0 : ℝ) 1

theorem percolation_threshold_in_unit_interval (P : PercolationThresholdPackage) (h : PercolationThresholdCondition P) :
  P.criticalProbability > 0 ∧ P.criticalProbability < 1 := by
  exact Set.mem_Ioo.mp h

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse