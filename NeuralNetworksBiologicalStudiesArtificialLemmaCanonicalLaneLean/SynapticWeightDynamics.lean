import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure SynapticWeightPackage where
  weightMatrix : Type u
  learningRule : Type v
  plasticityRule : Prop
  spikeTimingDependence : Prop
  homeostaticScaling : Prop

structure SynapticWeightEvidence (S : SynapticWeightPackage) where
  plasticityRuleClosed : S.plasticityRule
  spikeTimingDependenceClosed : S.spikeTimingDependence
  homeostaticScalingClosed : S.homeostaticScaling

def SynapticWeightClosed (S : SynapticWeightPackage) : Prop :=
  S.plasticityRule ∧ S.spikeTimingDependence ∧ S.homeostaticScaling

theorem synaptic_weight_closed_from_evidence (S : SynapticWeightPackage) (E : SynapticWeightEvidence S) :
    SynapticWeightClosed S := by
  exact And.intro E.plasticityRuleClosed (And.intro E.spikeTimingDependenceClosed E.homeostaticScalingClosed)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse