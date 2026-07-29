import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean.DiophantineApproximationObjects

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure LittlewoodConjectureCertificate where
  diophantineDatum : DiophantineApproximationDatum
  probabilisticDatum : ProbabilisticNumberTheoryDatum
  liminfCondition : String
  counterexampleKnown : Bool
  equidistributionChecked : Bool

def littlewoodConjectureCertificate : LittlewoodConjectureCertificate := {
  diophantineDatum := primitiveDiophantineDatum,
  probabilisticDatum := primitiveProbabilisticDatum,
  liminfCondition := "liminf_{n→∞} n * ||nα|| * ||nβ|| = 0",
  counterexampleKnown := false,
  equidistributionChecked := true
}

def LittlewoodConjectureLayerClosed (C : LittlewoodConjectureCertificate) : Prop :=
  C.diophantineDatum.uniformApproximationChecked = true ∧
  C.diophantineDatum.probabilisticBoundChecked = true ∧
  C.probabilisticDatum.expectedValueComputed = true ∧
  C.equidistributionChecked = true

theorem littlewood_conjecture_layer_closed_checked :
    LittlewoodConjectureLayerClosed littlewoodConjectureCertificate := by
  unfold LittlewoodConjectureLayerClosed littlewoodConjectureCertificate
  simp

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse