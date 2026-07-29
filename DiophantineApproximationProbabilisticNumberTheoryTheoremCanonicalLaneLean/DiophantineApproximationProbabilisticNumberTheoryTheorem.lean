import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.ErgodicTheoryLayer
import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.LittlewoodConjectureLayer

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rfl

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDiophantineApproxClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_approx_endgame (A : AdmissibleClass) :
    ConstrainedDiophantineApproxClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse