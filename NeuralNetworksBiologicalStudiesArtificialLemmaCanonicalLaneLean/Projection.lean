import NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def neuralProjection : Projection NeuralEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem neural_projection_idempotent (x : NeuralEndgameState) :
    neuralProjection.toFun (neuralProjection.toFun x) = neuralProjection.toFun x := by
  exact neuralProjection.idempotent x

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse
