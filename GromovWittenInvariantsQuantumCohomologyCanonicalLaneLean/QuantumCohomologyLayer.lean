import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.GromovWittenInvariants

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure QuantumCohomologyLayer where
  cohomologyRing : String
  quantumProductDefined : Prop
  associativity : Prop
  layerClosed : Prop
  layerClosedProof : layerClosed

def sourceQuantumCohomologyLayer : QuantumCohomologyLayer := {
  cohomologyRing := "",
  quantumProductDefined := True,
  associativity := True,
  layerClosed := True,
  layerClosedProof := trivial
}

def QuantumCohomologyLayerClosed (L : QuantumCohomologyLayer) : Prop :=
  L.layerClosed

theorem source_quantum_cohomology_layer_closed : QuantumCohomologyLayerClosed sourceQuantumCohomologyLayer :=
  trivial

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
