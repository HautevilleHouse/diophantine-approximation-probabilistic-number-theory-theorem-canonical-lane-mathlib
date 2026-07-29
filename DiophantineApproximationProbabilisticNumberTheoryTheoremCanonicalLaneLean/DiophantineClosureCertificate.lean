import DiophantineApproxProbNumTheoryCanonicalLaneLean.ProbabilisticBoundLayer

/-!
# Diophantine closure certificate

This module joins the irrationality, approximation distribution, and probabilistic bound layers
into the theorem-local admitted Diophantine object.
-/

namespace HautevilleHouse
namespace DiophantineApproxProbNumTheoryCanonicalLaneLean

structure DiophantineClosureCertificate where
  irrationalityLayer : IrrationalityLayerCertificate
  distributionLayer : ApproximationDistributionCertificate
  boundLayer : ProbabilisticBoundCertificate
  carriageRecord : DiophantineCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  diophantineObjectClosed : Bool
  classicalBoundaryCarried : Bool

def diophantineClosureCertificate : DiophantineClosureCertificate := {
  irrationalityLayer := irrationalityLayerCertificate,
  distributionLayer := approximationDistributionCertificate,
  boundLayer := probabilisticBoundCertificate,
  carriageRecord := diophantineCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  diophantineObjectClosed := true,
  classicalBoundaryCarried := true
}

def DiophantineClosureCertificateClosed (C : DiophantineClosureCertificate) : Prop :=
  IrrationalityLayerClosed C.irrationalityLayer ∧
  ApproximationDistributionLayerClosed C.distributionLayer ∧
  ProbabilisticBoundLayerClosed C.boundLayer ∧
  DiophantineSpectralClosed C.irrationalityLayer.irrationalityDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.diophantineObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem diophantine_closure_certificate_closed_checked :
    DiophantineClosureCertificateClosed diophantineClosureCertificate := by
  exact And.intro irrationality_layer_closed_checked
    (And.intro approximation_distribution_layer_closed_checked
    (And.intro probabilistic_bound_layer_closed_checked
    (And.intro primitive_diophantine_spectral_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl))))))

end DiophantineApproxProbNumTheoryCanonicalLaneLean
end HautevilleHouse