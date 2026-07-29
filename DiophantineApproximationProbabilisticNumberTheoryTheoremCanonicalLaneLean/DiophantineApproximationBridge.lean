import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure DiophantineApproximationDatum where
  rationalApproximationSequence : Nat → ℚ
  approximationExponent : ℝ
  discrepancy : ℝ
  limsupDiscrepancy : ℝ

def diophantineApproximationDatumPrimitive : DiophantineApproximationDatum := {
  rationalApproximationSequence := λ n => (⟨n, n+1⟩ : ℚ),
  approximationExponent := 2,
  discrepancy := 0.5,
  limsupDiscrepancy := 0.5
}

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked ∧
  A.object.operatorModelChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked, A.object.operatorModelWitness⟩

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse