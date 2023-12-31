#pragma once


#include "ADKernelGrad.h"



class DarcyPressure : public ADKernelGrad
{
public:
  static InputParameters validParams();
  
  DarcyPressure(const InputParameters & parameter);

protected:
 
  virtual ADRealVectorValue precomputeQpResidual() override;

  const Real & _permeability;
  const Real & _viscosity;
};

