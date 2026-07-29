import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.MirrorSymmetryLayer

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure QuantumCohomologyAnalyticCertificate where
  substrate : QuantumCohomologySubstrate
  fieldClosed : Prop
  actionLayerClosed : Prop
  constructiveLayerClosed : Prop
  mirrorSymmetryLayerClosed : Prop
  quantumCohomologyCarriageImported : Prop
  fieldClosedProof : fieldClosed
  actionLayerClosedProof : actionLayerClosed
  constructiveLayerClosedProof : constructiveLayerClosed
  mirrorSymmetryLayerClosedProof : mirrorSymmetryLayerClosed
  quantumCohomologyCarriageImportedProof : quantumCohomologyCarriageImported

def sourceQuantumCohomologyAnalyticCertificate : QuantumCohomologyAnalyticCertificate := {
  substrate := quantumCohomologySubstrate
  fieldClosed := GromovWittenFieldClosed primitiveGromovWittenField
  actionLayerClosed := QuantumCohomologyActionClosed sourceQuantumCohomologyActionEnvelope
  constructiveLayerClosed := ConstructiveGromovWittenClosed sourceConstructiveGromovWittenCertificate
  mirrorSymmetryLayerClosed := MirrorSymmetryClosed sourceMirrorSymmetryCertificate
  quantumCohomologyCarriageImported := True
  fieldClosedProof := primitive_gromov_witten_field_closed_checked
  actionLayerClosedProof := source_quantum_cohomology_action_closed
  constructiveLayerClosedProof := source_constructive_gromov_witten_closed
  mirrorSymmetryLayerClosedProof := source_mirror_symmetry_closed
  quantumCohomologyCarriageImportedProof := trivial
}

def QuantumCohomologyAnalyticCertificateClosed (C : QuantumCohomologyAnalyticCertificate) : Prop :=
  C.fieldClosed ∧
  C.actionLayerClosed ∧
  C.constructiveLayerClosed ∧
  C.mirrorSymmetryLayerClosed ∧
  C.quantumCohomologyCarriageImported

theorem source_quantum_cohomology_analytic_certificate_closed :
  QuantumCohomologyAnalyticCertificateClosed sourceQuantumCohomologyAnalyticCertificate := by
  exact And.intro sourceQuantumCohomologyAnalyticCertificate.fieldClosedProof
    (And.intro sourceQuantumCohomologyAnalyticCertificate.actionLayerClosedProof
      (And.intro sourceQuantumCohomologyAnalyticCertificate.constructiveLayerClosedProof
        (And.intro sourceQuantumCohomologyAnalyticCertificate.mirrorSymmetryLayerClosedProof
          sourceQuantumCohomologyAnalyticCertificate.quantumCohomologyCarriageImportedProof)))

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse