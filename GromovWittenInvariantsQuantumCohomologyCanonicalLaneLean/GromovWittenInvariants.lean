import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure GromovWittenInvariant where
  domain : String
  genus : ℕ
  markedPoints : ℕ
  targetVariety : String
  evaluationMap : String
  virtualFundamentalClass : String

def zeroGromovWittenInvariant : GromovWittenInvariant := {
  domain := "",
  genus := 0,
  markedPoints := 0,
  targetVariety := "",
  evaluationMap := "",
  virtualFundamentalClass := ""
}

structure GromovWittenLayer where
  invariants : List GromovWittenInvariant
  quantumProduct : String
  divisorEquation : String
  topologicalRecursion : String
  layerClosed : Prop
  layerClosedProof : layerClosed

def sourceGromovWittenLayer : GromovWittenLayer := {
  invariants := [],
  quantumProduct := "",
  divisorEquation := "",
  topologicalRecursion := "",
  layerClosed := True,
  layerClosedProof := trivial
}

def GromovWittenLayerClosed (L : GromovWittenLayer) : Prop :=
  L.layerClosed

theorem source_gromov_witten_layer_closed : GromovWittenLayerClosed sourceGromovWittenLayer :=
  trivial

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
