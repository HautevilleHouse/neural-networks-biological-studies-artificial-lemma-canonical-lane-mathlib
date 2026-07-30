import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure GraphSpectraPackage where
  adjacencyEigenvalues : List ℝ
  spectralRadius : ℝ
  spectralGap : ℝ
  eigenvalueDistribution : Prop
  algebraicConnectivity : ℝ

def SpectralGapCondition (G : GraphSpectraPackage) : Prop :=
  G.spectralGap > 0

theorem spectral_gap_pos_from_package (G : GraphSpectraPackage) (h : SpectralGapCondition G) :
  G.spectralGap > 0 := h

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse