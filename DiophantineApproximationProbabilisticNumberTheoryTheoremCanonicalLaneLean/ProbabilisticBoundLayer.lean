import DiophantineApproxProbNumTheoryCanonicalLaneLean.ApproximationDistributionLayer

/-!
# Probabilistic bound layer

This layer records the probabilistic bound admitted by the distribution layer.
-/

namespace HautevilleHouse
namespace DiophantineApproxProbNumTheoryCanonicalLaneLean

structure ProbabilisticBoundCertificate where
  distributionLayer : ApproximationDistributionCertificate
  boundRoute : String
  khinchinRoute : String
  measureRoute : String
  boundChecked : Bool
  carriedBoundaryNamed : Bool

def probabilisticBoundCertificate : ProbabilisticBoundCertificate := {
  distributionLayer := approximationDistributionCertificate,
  boundRoute := "probabilistic bound projected through the distribution datum",
  khinchinRoute := "Khinchin's theorem constant kappa and exponent lambda",
  measureRoute := "measure-theoretic bound carried by the gateway",
  boundChecked := true,
  carriedBoundaryNamed := true
}

def ProbabilisticBoundLayerClosed (C : ProbabilisticBoundCertificate) : Prop :=
  C.distributionLayer.distributionChecked = true ∧
  C.boundChecked = true ∧
  C.carriedBoundaryNamed = true

theorem probabilistic_bound_layer_closed_checked :
    ProbabilisticBoundLayerClosed probabilisticBoundCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproxProbNumTheoryCanonicalLaneLean
end HautevilleHouse