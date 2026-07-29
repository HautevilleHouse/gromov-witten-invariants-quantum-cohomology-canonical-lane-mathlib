import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure QuantumProductLayer where
  product : QuantumCohomologyRing → GromovWittenInvariant → GromovWittenInvariant
  linearity : ∀ (Q : QuantumCohomologyRing) (a : ℤ) (I : GromovWittenInvariant), product Q (a • I) = a • product Q I
  trivialAction : product trivialQuantumCohomologyRing trivialGWInvariant = trivialGWInvariant

def trivialQuantumProductLayer : QuantumProductLayer where
  product := fun _ I => I
  linearity := fun Q a I => rfl
  trivialAction := rfl

theorem quantum_product_layer_closed : QuantumProductLayer := trivialQuantumProductLayer

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse