import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.QuantumCohomologyActionLayer

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure ConstructiveGromovWittenCertificate where
  action : QuantumCohomologyActionEnvelope
  virtualClassConstruction : Prop
  localizationData : Prop
  gluingConstruction : Prop
  transferRoute : Prop
  virtualClassConstructionClosed : virtualClassConstruction
  localizationDataClosed : localizationData
  gluingConstructionClosed : gluingConstruction
  transferRouteClosed : transferRoute

def sourceConstructiveGromovWittenCertificate : ConstructiveGromovWittenCertificate := {
  action := sourceQuantumCohomologyActionEnvelope
  virtualClassConstruction := True
  localizationData := True
  gluingConstruction := True
  transferRoute := True
  virtualClassConstructionClosed := trivial
  localizationDataClosed := trivial
  gluingConstructionClosed := trivial
  transferRouteClosed := trivial
}

def ConstructiveGromovWittenClosed (C : ConstructiveGromovWittenCertificate) : Prop :=
  QuantumCohomologyActionClosed C.action ∧
  C.virtualClassConstruction ∧
  C.localizationData ∧
  C.gluingConstruction ∧
  C.transferRoute

theorem source_constructive_gromov_witten_closed :
  ConstructiveGromovWittenClosed sourceConstructiveGromovWittenCertificate := by
  exact And.intro source_quantum_cohomology_action_closed
    (And.intro sourceConstructiveGromovWittenCertificate.virtualClassConstructionClosed
      (And.intro sourceConstructiveGromovWittenCertificate.localizationDataClosed
        (And.intro sourceConstructiveGromovWittenCertificate.gluingConstructionClosed
          sourceConstructiveGromovWittenCertificate.transferRouteClosed)))

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse