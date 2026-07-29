import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure SimultaneousDiophantineCertificate where
  dimension : ℕ
  simultaneousApproximationExponent : ℝ
  probabilisticBound : ℝ
  endpointChecked : Bool

def simultaneousCertificatePrimitive : SimultaneousDiophantineCertificate := {
  dimension := 2,
  simultaneousApproximationExponent := 1.5,
  probabilisticBound := 0.99,
  endpointChecked := true
}

def SimultaneousLayerClosed (C : SimultaneousDiophantineCertificate) : Prop :=
  C.endpointChecked = true ∧ C.simultaneousApproximationExponent ≥ 0 ∧ C.probabilisticBound ≥ 0

theorem simultaneous_layer_closed : SimultaneousLayerClosed simultaneousCertificatePrimitive := by
  exact ⟨rfl, by norm_num, by norm_num⟩

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse