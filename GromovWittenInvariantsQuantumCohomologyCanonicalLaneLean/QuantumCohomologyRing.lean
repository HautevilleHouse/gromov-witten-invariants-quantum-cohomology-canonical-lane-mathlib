import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.GromovWittenInvariantsQuantumCohomology

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure QuantumCohomologyRing where
  baseRing : String
  quantumProduct : String
  associativity : Prop

structure GromovWittenPotential where
  genus : Nat
  degree : Nat
  insertions : Nat

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
