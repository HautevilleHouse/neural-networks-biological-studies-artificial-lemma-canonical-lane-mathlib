import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure RandomGraphPackage where
  edgeProbability : Float
  numberOfVertices : Nat
  degreeDistribution : List Float
  giantComponentExists : Prop
  phaseTransitionObserved : Prop
  randomGraphClosed : Prop

structure RandomGraphEvidence (R : RandomGraphPackage) where
  edgeProbabilityPositive : R.edgeProbability > 0
  giantComponentExistsTerm : R.giantComponentExists
  randomGraphClosedTerm : R.randomGraphClosed

def RandomGraphClosed (R : RandomGraphPackage) : Prop :=
  R.edgeProbability > 0 ∧ R.giantComponentExists ∧ R.randomGraphClosed

theorem random_graph_closed_from_evidence (R : RandomGraphPackage)
    (E : RandomGraphEvidence R) : RandomGraphClosed R := by
  exact And.intro E.edgeProbabilityPositive (And.intro E.giantComponentExistsTerm E.randomGraphClosedTerm)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse