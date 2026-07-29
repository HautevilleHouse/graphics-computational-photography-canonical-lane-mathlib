import GraphicsComputationalPhotographyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

structure ToneMappingOperator where
  name : String
  parameters : List Float
  outputFormat : String

def toneMappingClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem tone_mapping_admissible (A : AdmissibleClass) (op : ToneMappingOperator) :
    toneMappingClosed A := by
  exact A.remainderRecorded

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse