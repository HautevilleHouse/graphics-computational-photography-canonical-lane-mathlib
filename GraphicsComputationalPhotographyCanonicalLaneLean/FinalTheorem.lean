import canonicalLaneMathlib.FinalTheorem
import GraphicsComputationalPhotographyCanonicalLaneLean.BridgeLemmas
import GraphicsComputationalPhotographyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

def ConstrainedComputationalPhotographyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computational_photography_endgame (A : AdmissibleClass) :
    ConstrainedComputationalPhotographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse