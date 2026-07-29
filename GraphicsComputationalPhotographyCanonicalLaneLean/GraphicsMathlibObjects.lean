import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotography

abbrev Image := List (List (Float × Float × Float))  -- RGB image as 2D array of triples

structure Renderer where
  render : Image → Bool

def WeightedGraph (vertices : List String) : Type := List (String × String × Float)

structure Histogram (T : Type) where
  bins : List T
  counts : List Nat
  deriving Repr, DecidableEq

structure SparseMatrix where
  rows : Nat
  cols : Nat
  entries : List (Nat × Nat × Float)
  deriving Repr, DecidableEq

structure ImageLanguage where
  images : List Image
  deriving Repr, DecidableEq

def Decides (M : Renderer) (L : ImageLanguage) : Prop :=
  ∀ (img : Image), M.render img = true ↔ img ∈ L.images

structure CameraPipeline where
  imageLanguage : ImageLanguage
  renderer : Renderer
  deriving Repr, DecidableEq

end GraphicsComputationalPhotography
end HautevilleHouse