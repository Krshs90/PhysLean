import Mathlib.Data.Real.Basic

namespace PhysLean.Aerospace.Aerodynamics

/-- Density of air or fluid. -/
structure FluidDensity where
  rho : ℝ
  h_pos : rho > 0

/-- Lift Equation: L = 1/2 * rho * v^2 * S * C_L -/
def aerodynamic_lift (rho : FluidDensity) (v : ℝ) (S : ℝ) (C_L : ℝ) (h_S : S > 0) : ℝ :=
  0.5 * rho.rho * (v ^ 2) * S * C_L

/-- Drag Equation: D = 1/2 * rho * v^2 * S * C_D -/
def aerodynamic_drag (rho : FluidDensity) (v : ℝ) (S : ℝ) (C_D : ℝ) (h_S : S > 0) : ℝ :=
  0.5 * rho.rho * (v ^ 2) * S * C_D

end PhysLean.Aerospace.Aerodynamics
