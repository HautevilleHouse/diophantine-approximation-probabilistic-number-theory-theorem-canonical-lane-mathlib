import DiophantineApproxProbNumTheoryCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

/-!
# Mathlib Statement Layer

This module imports the shared Mathlib-backed Canonical Lane core and the
Diophantine approximation closure pilot.
-/

namespace HautevilleHouse
namespace DiophantineApproxProbNumTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String
deriving Repr, DecidableEq

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib closure pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def commonCoreProjectionLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta

def commonCoreCarriageLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.carriedComponent = L.delta - L.projection.toFun L.delta

def commonCoreIdempotenceAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.projection.toFun (L.projection.toFun L.delta) = L.projection.toFun L.delta

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true := by
  rfl

def theoremSpecificClosurePilotClosed : Prop :=
  forall A : AdmissibleClass, NativeClosureTheorem A

def theoremSpecificConditionalRouteClosed : Prop :=
  forall A : AdmissibleClass, ConditionalRouteClosure A

theorem theorem_specific_closure_pilot_checked :
    theoremSpecificClosurePilotClosed := by
  intro A
  exact native_closure_theorem_checked A

theorem theorem_specific_conditional_route_checked :
    theoremSpecificConditionalRouteClosed := by
  intro A
  exact conditional_route_closure_checked A

end DiophantineApproxProbNumTheoryCanonicalLaneLean
end HautevilleHouse