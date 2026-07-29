import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotography

open HautevilleHouse.GraphicsComputationalPhotography

structure SparseMatrix where
  rows : Nat
  cols : Nat
  entries : List (Nat × Nat × Float)
  deriving Repr, DecidableEq

def Decides (M : Renderer) (L : ImageLanguage) : Prop :=
  ∀ (img : Image), M.render img = true ↔ img ∈ L

def imageDefined (A : GraphicsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ (∃ (img : Image), img ∈ A.lane.imageLanguage)

theorem bridgeClosed_implies_imageDefined (A : GraphicsAdmissibleClass) :
    bridgeClosed A → imageDefined A := by
  intro h
  refine And.intro h ?_
  sorry

end GraphicsComputationalPhotography
end HautevilleHouse