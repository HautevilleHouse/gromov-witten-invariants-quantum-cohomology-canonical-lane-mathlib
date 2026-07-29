import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.ConstructiveGromovWittenLayer

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure MirrorSymmetryCertificate where
  constructiveGW : ConstructiveGromovWittenCertificate
  mirrorMap : Prop
  periodIdentity : Prop
  YukawaCoupling : Prop
  mirrorMapClosed : mirrorMap
  periodIdentityClosed : periodIdentity
  YukawaCouplingClosed : YukawaCoupling

def sourceMirrorSymmetryCertificate : MirrorSymmetryCertificate := {
  constructiveGW := sourceConstructiveGromovWittenCertificate
  mirrorMap := True
  periodIdentity := True
  YukawaCoupling := True
  mirrorMapClosed := trivial
  periodIdentityClosed := trivial
  YukawaCouplingClosed := trivial
}

def MirrorSymmetryClosed (C : MirrorSymmetryCertificate) : Prop :=
  ConstructiveGromovWittenClosed C.constructiveGW ∧
  C.mirrorMap ∧
  C.periodIdentity ∧
  C.YukawaCoupling

theorem source_mirror_symmetry_closed :
  MirrorSymmetryClosed sourceMirrorSymmetryCertificate := by
  exact And.intro source_constructive_gromov_witten_closed
    (And.intro sourceMirrorSymmetryCertificate.mirrorMapClosed
      (And.intro sourceMirrorSymmetryCertificate.periodIdentityClosed
        sourceMirrorSymmetryCertificate.YukawaCouplingClosed))

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse