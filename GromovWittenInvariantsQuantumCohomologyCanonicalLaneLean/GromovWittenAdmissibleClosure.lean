import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.GromovWittenClosureCertificate

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

def gwAdmissibleClass : AdmissibleClass :=
  {
    object := { object := { sourceKey := "GromovWitten", theoremObject := "GromovWittenInvariants", claimBoundary := "classical" },
                localWitness := "Gromov-Witten potentials", bridgeEvidence := "bridge", sourceKeyChecked := rfl, theoremObjectChecked := rfl }
    endpointSatisfied := GromovWittenClosureClosed (default)
    remainderRecorded := True
    gateWitness := Or.inl (sourceGromovWittenClosureClosed)
  }

theorem gw_admissible_closure : ConstrainedTheoremClosure gwAdmissibleClass := by
  exact And.intro (bridge_from_admissible_class gwAdmissibleClass) (gate_from_admissible_class gwAdmissibleClass)

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse
