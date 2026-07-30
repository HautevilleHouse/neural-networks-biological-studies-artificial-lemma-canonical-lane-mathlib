import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean

structure InformationCodingPackage where
  codingScheme : Type u
  mutualInformation : Type v
  decodingAccuracy : Prop
  efficiency : Prop
  redundancy : Prop

structure InformationCodingEvidence (I : InformationCodingPackage) where
  decodingAccuracyClosed : I.decodingAccuracy
  efficiencyClosed : I.efficiency
  redundancyClosed : I.redundancy

def InformationCodingClosed (I : InformationCodingPackage) : Prop :=
  I.decodingAccuracy ∧ I.efficiency ∧ I.redundancy

theorem information_coding_closed_from_evidence (I : InformationCodingPackage) (E : InformationCodingEvidence I) :
    InformationCodingClosed I := by
  exact And.intro E.decodingAccuracyClosed (And.intro E.efficiencyClosed E.redundancyClosed)

end NeuralNetworksBiologicalStudiesArtificialLemmaCanonicalLaneLean
end HautevilleHouse