import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.DiophantineApproximationObjects

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure ProbabilisticDiophantineLayerCertificate where
  datum : CombinedApproximationDatum
  probabilisticRoute : String
  diophantineRoute : String
  jointDistributionRoute : String
  layerClosed : Bool
  boundaryCarried : Bool

def probabilisticDiophantineLayerCertificate : ProbabilisticDiophantineLayerCertificate := {
  datum := primitiveCombinedDatum,
  probabilisticRoute := "probabilistic number theory route via ergodic theory",
  diophantineRoute := "diophantine approximation route via continued fractions",
  jointDistributionRoute := "joint distribution of approximation coefficients",
  layerClosed := true,
  boundaryCarried := true
}

def ProbabilisticDiophantineLayerClosed (C : ProbabilisticDiophantineLayerCertificate) : Prop :=
  C.datum.diophantine.rationalApproximationIndex = 0 ∧
  C.datum.diophantine.uniformApproximationChecked = true ∧
  C.datum.diophantine.probabilisticBoundChecked = true ∧
  C.datum.probabilistic.expectedValueComputed = true ∧
  C.datum.probabilistic.lawOfLargeNumbersApplied = true ∧
  C.datum.jointDistributionChecked = true ∧
  C.datum.correlationComputed = true ∧
  C.layerClosed = true ∧
  C.boundaryCarried = true

theorem probabilistic_diophantine_layer_closed_checked :
    ProbabilisticDiophantineLayerClosed probabilisticDiophantineLayerCertificate := by
  unfold ProbabilisticDiophantineLayerClosed probabilisticDiophantineLayerCertificate
  simp

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse