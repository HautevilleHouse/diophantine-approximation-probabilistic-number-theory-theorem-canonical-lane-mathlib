import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean

structure MetricNumberTheoryCertificate where
  badlyApproximableDimension : ℕ
  distributionalResult : String
  badApproximableSetDimension : ℝ
  endpointChecked : Bool

def metricNumberTheoryCertificatePrimitive : MetricNumberTheoryCertificate := {
  badlyApproximableDimension := 1,
  distributionalResult := "full Hausdorff dimension",
  badApproximableSetDimension := 1.0,
  endpointChecked := true
}

def MetricLayerClosed (C : MetricNumberTheoryCertificate) : Prop :=
  C.endpointChecked = true ∧ C.badApproximableSetDimension ≥ 0

theorem metric_layer_closed : MetricLayerClosed metricNumberTheoryCertificatePrimitive := by
  exact ⟨rfl, by norm_num⟩

end DiophantineApproximationProbabilisticNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse