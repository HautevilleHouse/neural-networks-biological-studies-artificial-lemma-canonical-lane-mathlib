import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure STDPPackage where
  timingWindow : Type u
  weightChange : Type v
  hebbianComponent : Prop
  antiHebbianComponent : Prop
  tripletRule : Prop

structure STDPEvidence (S : STDPPackage) where
  hebbianComponentClosed : S.hebbianComponent
  antiHebbianComponentClosed : S.antiHebbianComponent
  tripletRuleClosed : S.tripletRule

def STDPClosed (S : STDPPackage) : Prop :=
  S.hebbianComponent ∧ S.antiHebbianComponent ∧ S.tripletRule

theorem stdp_closed_from_evidence (S : STDPPackage) (E : STDPEvidence S) :
    STDPClosed S := by
  exact And.intro E.hebbianComponentClosed (And.intro E.antiHebbianComponentClosed E.tripletRuleClosed)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse