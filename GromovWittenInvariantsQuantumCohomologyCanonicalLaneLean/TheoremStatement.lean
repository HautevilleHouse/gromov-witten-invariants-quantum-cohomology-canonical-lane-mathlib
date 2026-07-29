import GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  quantumCohomologyStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  quantumCohomologyStatement := "Gromov-Witten invariants and quantum cohomology internalized through moduli spaces, virtual fundamental class, and divisor axioms",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end GromovWittenInvariantsQuantumCohomologyCanonicalLaneLean
end HautevilleHouse