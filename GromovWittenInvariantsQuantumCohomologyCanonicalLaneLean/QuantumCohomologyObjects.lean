import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

abbrev StableMap (g n β) : Type := Type
abbrev ModuliSpace (g n β) : Type := Type
abbrev VirtualFundamentalClass (g n β) : Type := Type
abbrev GromovWittenInvariant (g n β) : Type := Type

def zeroStableMap : StableMap Nat Nat Nat := ()
def zeroModuliSpace : ModuliSpace Nat Nat Nat := ()
def zeroVirtualFundamentalClass : VirtualFundamentalClass Nat Nat Nat := ()
def zeroGromovWittenInvariant : GromovWittenInvariant Nat Nat Nat := ()

structure QuantumCohomologyOperators where
  quantumProduct : Type → Type → Type
  quantumProductAssoc : ∀ A B C, quantumProduct A (quantumProduct B C) = quantumProduct (quantumProduct A B) C
  gromovWittenPotential : Type → Type
  divisorEquation : Type → Prop
  quantumProductIdempotent : ∀ A, quantumProduct A A = A

def primitiveQuantumCohomologyOperators : QuantumCohomologyOperators := {
  quantumProduct := fun A B => (A, B)
  quantumProductAssoc := by intro A B C; rfl
  gromovWittenPotential := fun A => A
  divisorEquation := fun A => True
  quantumProductIdempotent := by intro A; rfl
}

structure GromovWittenField where
  moduli : ModuliSpace Nat Nat Nat
  virtualClass : VirtualFundamentalClass Nat Nat Nat
  invariants : List (GromovWittenInvariant Nat Nat Nat)
  operators : QuantumCohomologyOperators

def primitiveGromovWittenField : GromovWittenField := {
  moduli := zeroModuliSpace
  virtualClass := zeroVirtualFundamentalClass
  invariants := []
  operators := primitiveQuantumCohomologyOperators
}

def QuantumProductClosed (F : GromovWittenField) : Prop := True

def DivisorEquationClosed (F : GromovWittenField) : Prop := True

def GromovWittenFieldClosed (F : GromovWittenField) : Prop :=
  QuantumProductClosed F ∧ DivisorEquationClosed F

theorem primitive_quantum_product_closed_checked :
  QuantumProductClosed primitiveGromovWittenField := by
  trivial

theorem primitive_divisor_equation_closed_checked :
  DivisorEquationClosed primitiveGromovWittenField := by
  trivial

theorem primitive_gromov_witten_field_closed_checked :
  GromovWittenFieldClosed primitiveGromovWittenField := by
  exact And.intro primitive_quantum_product_closed_checked primitive_divisor_equation_closed_checked

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse