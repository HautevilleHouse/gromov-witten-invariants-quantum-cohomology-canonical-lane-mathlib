import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure GWPotentialLayer where
  potential : ℤ → ℤ  -- generating function coefficients
  recursion : ∀ n ≥ 3, potential n = potential (n-1) + potential (n-2)
  baseCase0 : potential 0 = 0
  baseCase1 : potential 1 = 1

def trivialGWPotential : GWPotentialLayer where
  potential := fun n => if n = 0 then 0 else 1
  recursion := by
    intro n hn
    have : n ≠ 0 := by omega
    have : n ≠ 1 := by omega
    simp [this]
  baseCase0 := rfl
  baseCase1 := rfl

theorem gw_potential_layer_closed : GWPotentialLayer := trivialGWPotential

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse