import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.GWInvariantsQuantumCohomologyCertificate

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

def ConstrainedGWInvariantsQuantumCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gw_invariants_quantum_cohomology_closure (A : AdmissibleClass) : ConstrainedGWInvariantsQuantumCohomologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
