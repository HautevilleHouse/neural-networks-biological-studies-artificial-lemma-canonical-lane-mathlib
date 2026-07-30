import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure PercolationPackage where
  criticalProbability : Float
  percolationThreshold : Float
  infiniteClusterExists : Prop
  finitenessOfClusters : Prop
  percolationClosed : Prop

structure PercolationEvidence (P : PercolationPackage) where
  thresholdPositive : P.criticalProbability > 0
  infiniteClusterExistsTerm : P.infiniteClusterExists
  percolationClosedTerm : P.percolationClosed

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.criticalProbability > 0 ∧ P.infiniteClusterExists ∧ P.percolationClosed

theorem percolation_closed_from_evidence (P : PercolationPackage)
    (E : PercolationEvidence P) : PercolationClosed P := by
  exact And.intro E.thresholdPositive (And.intro E.infiniteClusterExistsTerm E.percolationClosedTerm)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse