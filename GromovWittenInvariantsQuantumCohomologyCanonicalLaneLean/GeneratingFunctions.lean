import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.QuantumCohomologyRing

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure GeneratingFunction where
  parameters : List String
  series : String
  convergence : Prop

structure MirrorMap where
  periods : String
  monodromy : Prop

def gromovWittenPotentialClosed (p : GromovWittenPotential) (g : GeneratingFunction) : Prop :=
  p.genus = 0 ∧ p.degree = 1 ∧ g.convergence

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
