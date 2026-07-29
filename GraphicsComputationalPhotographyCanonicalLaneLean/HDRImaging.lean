import GraphicsComputationalPhotographyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

structure HDRPipeline where
  inputExposures : List ImageObject
  mergeAlgorithm : String
  outputHDR : ImageObject

def hdrMergeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem hdr_merge_admissible (A : AdmissibleClass) (p : HDRPipeline) :
    hdrMergeClosed A := by
  exact A.endpointSatisfied

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse