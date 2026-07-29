import GraphicsComputationalPhotographyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputationalPhotographyCanonicalLaneLean

structure ImageRegistrationResult where
  transformMatrix : List Float
  registeredImage : ImageObject
  residualError : Float

def registrationClosed (A : AdmissibleClass) : Prop :=
  A.gateWitness

theorem registration_admissible (A : AdmissibleClass) (r : ImageRegistrationResult) :
    registrationClosed A := by
  exact A.gateWitness

end GraphicsComputationalPhotographyCanonicalLaneLean
end HautevilleHouse