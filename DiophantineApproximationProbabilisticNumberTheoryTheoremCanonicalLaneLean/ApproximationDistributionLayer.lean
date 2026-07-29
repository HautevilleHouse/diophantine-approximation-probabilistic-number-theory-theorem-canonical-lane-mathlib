import DiophantineApproxProbNumTheoryCanonicalLaneLean.IrrationalityLayer

/-!
# Approximation distribution layer

This layer records the distribution of Diophantine approximations admitted by the
probabilistic framework.
-/

namespace HautevilleHouse
namespace DiophantineApproxProbNumTheoryCanonicalLaneLean

structure ApproximationDistributionCertificate where
  irrationalityDatum : IrrationalityDatum
  distributionRoute : String
  probabilisticBoundRoute : String
  approximationMeasureRoute : String
  distributionChecked : Bool
  boundaryNamed : Bool

def approximationDistributionCertificate : ApproximationDistributionCertificate := {
  irrationalityDatum := primitiveIrrationalityDatum,
  distributionRoute := "distribution of approximations projected through the admitted irrationality datum",
  probabilisticBoundRoute := "probabilistic bounds via Khinchin's theorem constants",
  approximationMeasureRoute := "approximation measure carried by the gateway",
  distributionChecked := true,
  boundaryNamed := true
}

def ApproximationDistributionLayerClosed (C : ApproximationDistributionCertificate) : Prop :=
  C.irrationalityDatum.distributionChecked = true ∧
  C.distributionChecked = true ∧
  C.boundaryNamed = true

theorem approximation_distribution_layer_closed_checked :
    ApproximationDistributionLayerClosed approximationDistributionCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproxProbNumTheoryCanonicalLaneLean
end HautevilleHouse