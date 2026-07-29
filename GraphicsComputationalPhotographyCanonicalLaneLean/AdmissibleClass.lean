import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

structure ImageObject where
  resolution : Nat × Nat
  channelCount : Nat
  pixelData : List Float

def isValidImage (img : ImageObject) : Prop :=
  img.resolution.1 * img.resolution.2 * img.channelCount = img.pixelData.length

structure ComputationalPhotographyAdmittedObject where
  inputImage : ImageObject
  algorithm : String
  outputDescription : String
  complexityBound : Nat

def Decides (M : String) (problem : String) : Prop :=
  True -- placeholder for decidability

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse