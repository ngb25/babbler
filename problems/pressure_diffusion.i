[Mesh]
 [mesh]
  type = GeneratedMeshGenerator
  dim = 2
  nx = 100
  ny = 10
  xmax = 0.304
  ymax = 0.0257
 []
 coord_type = RZ
 rz_coord_axis = X
[]

[Variables]
 [pressure]
 []
[]

[Kernels]
 [diffusion]
  type = DarcyPressure
  variable = pressure
  permeability = 0.8451e-09
 []
[]

[BCs]
 [inlet]
  type = ADDirichletBC
  variable = pressure
  boundary = left
  value = 4000
 []
 [outlet]
  type = ADDirichletBC
  variable = pressure
  boundary = right
  value = 0
 []
[]

[Problem]
 type = FEProblem
[]


[Executioner]
 type = Steady
 solve_type = NEWTON

 petsc_options_iname = '-pc_type -pc_hypre_type'
 petsc_options_value = ' hypre   boomeramg'
[]

[Outputs]
 exodus = true
 perf_graph = true
[]

