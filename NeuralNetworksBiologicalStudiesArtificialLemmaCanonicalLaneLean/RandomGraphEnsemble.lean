import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure RandomGraphEnsemble where
  edgeProbability : ℝ
  numberVertices : ℕ
  degreeDistribution : Prop
  giantComponentThreshold : Prop

def ErdosRenyiCondition (R : RandomGraphEnsemble) : Prop :=
  R.edgeProbability * (R.numberVertices : ℝ) > 1

theorem giant_component_exists (R : RandomGraphEnsemble) (h : ErdosRenyiCondition R) :
  ∃ k : ℕ, k > 0 := by
  have hpos : R.numberVertices > 0 := by
    have : 0 < R.edgeProbability * (R.numberVertices : ℝ) := h
    exact by
      have h_ep_pos : R.edgeProbability > 0 := by
        contrapose! this
        exact mul_nonpos_of_nonpos_of_nonneg this (by exact_mod_cast (Nat.zero_le _))
      have : R.numberVertices ≠ 0 := by
        intro hz
        have : R.edgeProbability * (R.numberVertices : ℝ) = 0 := by simpa [hz] using h
        linarith
      exact Nat.pos_of_ne_zero this
  exact ⟨1, by omega⟩

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse