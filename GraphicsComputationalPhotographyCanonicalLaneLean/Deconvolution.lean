import GraphicsComputationalPhotographyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

structure DeconvolutionProblem where
  blurredImage : ImageObject
  psf : List Float
  algorithm : String

def deconvolutionClosed (A : AdmissibleClass) : Prop :=
  A.lane.solverDecidesProjectedLanguage

theorem deconvolution_admissible (A : AdmissibleClass) (d : DeconvolutionProblem) :
    deconvolutionClosed A := by
  exact A.lane.solverDecidesProjectedLanguage

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse