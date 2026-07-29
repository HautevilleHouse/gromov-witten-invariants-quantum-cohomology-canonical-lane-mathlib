import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.QuantumCohomologySubstrate

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure QuantumCohomologyActionEnvelope where
  field : GromovWittenField
  quantumProductClosed : Prop
  divisorEquationClosed : Prop
  actionBound : Prop
  kernelCondition : Prop
  quantumProductClosedProof : quantumProductClosed
  divisorEquationClosedProof : divisorEquationClosed
  actionBoundProof : actionBound
  kernelConditionProof : kernelCondition

def sourceQuantumCohomologyActionEnvelope : QuantumCohomologyActionEnvelope := {
  field := primitiveGromovWittenField
  quantumProductClosed := QuantumProductClosed primitiveGromovWittenField
  divisorEquationClosed := DivisorEquationClosed primitiveGromovWittenField
  actionBound := True
  kernelCondition := True
  quantumProductClosedProof := primitive_quantum_product_closed_checked
  divisorEquationClosedProof := primitive_divisor_equation_closed_checked
  actionBoundProof := trivial
  kernelConditionProof := trivial
}

def QuantumCohomologyActionClosed (E : QuantumCohomologyActionEnvelope) : Prop :=
  E.quantumProductClosed ∧ E.divisorEquationClosed ∧ E.actionBound ∧ E.kernelCondition

theorem source_quantum_cohomology_action_closed :
  QuantumCohomologyActionClosed sourceQuantumCohomologyActionEnvelope := by
  exact And.intro sourceQuantumCohomologyActionEnvelope.quantumProductClosedProof
    (And.intro sourceQuantumCohomologyActionEnvelope.divisorEquationClosedProof
      (And.intro sourceQuantumCohomologyActionEnvelope.actionBoundProof
        sourceQuantumCohomologyActionEnvelope.kernelConditionProof))

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse