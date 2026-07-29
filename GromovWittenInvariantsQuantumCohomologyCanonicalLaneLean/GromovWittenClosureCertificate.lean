import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.DesingularizationWidth

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure GromovWittenClosureCertificate where
  quantumRing : QuantumCohomologyRing
  generatingFunction : GeneratingFunction
  mirrorMap : MirrorMap
  desingularization : DesingularizationWidth
  injectivity : InjectivityBound
  nonvanishing : Prop
  nonvanishingClosed : nonvanishing

def GromovWittenClosureClosed (C : GromovWittenClosureCertificate) : Prop :=
  C.quantumRing.associativity ∧
  gromovWittenPotentialClosed (GromovWittenPotential.mk 0 1 0) C.generatingFunction ∧
  C.desingularization.widthClosed ∧
  C.injectivity.boundClosed ∧
  C.nonvanishing

theorem sourceGromovWittenClosureClosed : GromovWittenClosureClosed (default) := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
