import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure DiophantineApproximationDatum where
  rationalApproximationIndex : Nat
  irrationalityMeasure : ℚ → ℚ
  approximationConstant : ℝ
  uniformApproximationChecked : Bool
  probabilisticBoundChecked : Bool

def primitiveDiophantineDatum : DiophantineApproximationDatum := {
  rationalApproximationIndex := 0,
  irrationalityMeasure := λ r => 0,
  approximationConstant := 0,
  uniformApproximationChecked := true,
  probabilisticBoundChecked := true
}

structure ProbabilisticNumberTheoryDatum where
  probabilityMeasure : String
  expectedValueComputed : Bool
  varianceComputed : Bool
  asymptoticDistributionNamed : String
  lawOfLargeNumbersApplied : Bool

def primitiveProbabilisticDatum : ProbabilisticNumberTheoryDatum := {
  probabilityMeasure := "Haar measure on compact group",
  expectedValueComputed := true,
  varianceComputed := true,
  asymptoticDistributionNamed := "normal distribution",
  lawOfLargeNumbersApplied := true
}

structure CombinedApproximationDatum where
  diophantine : DiophantineApproximationDatum
  probabilistic : ProbabilisticNumberTheoryDatum
  jointDistributionChecked : Bool
  correlationComputed : Bool

def primitiveCombinedDatum : CombinedApproximationDatum := {
  diophantine := primitiveDiophantineDatum,
  probabilistic := primitiveProbabilisticDatum,
  jointDistributionChecked := true,
  correlationComputed := true
}

structure DiophantineClass where
  continuedFractionExpansion : String
  badlyApproximableConstant : ℝ
  dirichletApproximationConstant : ℝ
  
def diophantineClass : DiophantineClass := {
  continuedFractionExpansion := "periodic continued fraction",
  badlyApproximableConstant := 1.0,
  dirichletApproximationConstant := 1.0
}

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse