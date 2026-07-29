import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.GeneratingFunctions

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure DesingularizationWidth where
  dimension : Nat
  width : Nat
  widthClosed : width = 0

structure InjectivityBound where
  degree : Nat
  bound : Nat
  boundClosed : bound ≥ 1

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
