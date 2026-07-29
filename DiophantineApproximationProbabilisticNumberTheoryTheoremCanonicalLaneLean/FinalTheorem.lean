import canonicalLaneMathlib.AdmissibleClass
import DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.DiophantineApproximationLayer
import DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.ProbabilisticNumberTheoryLayer

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def DiophantineApproximationProbabilisticNumberTheoryClosure (A : AdmissibleClass) : Prop :=
  ConstrainedTheoremClosure A ∧
  DiophantineApproximationLayerClosed diophantineApproximationCertificate ∧
  ProbabilisticNumberTheoryLayerClosed probabilisticNumberTheoryCertificate

theorem diophantine_approximation_probabilistic_number_theory_endgame (A : AdmissibleClass) :
    DiophantineApproximationProbabilisticNumberTheoryClosure A := by
  refine And.intro (constrained_theorem_closure A) (And.intro ?_ ?_)
  · exact diophantine_approximation_layer_closed_checked
  · exact probabilistic_number_theory_layer_closed_checked

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse