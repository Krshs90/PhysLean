import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import PhysLean.Mechanics.Kinematics

namespace PhysLean.Aerospace.Orbital

open PhysLean.Mechanics.Kinematics

/-- Standard gravitational parameter mu (μ = GM). -/
structure GravitationalParameter where
  mu : ℝ
  h_pos : mu > 0

/-- Semi-major axis of an orbit (a). -/
structure SemiMajorAxis where
  a : ℝ
  h_pos : a > 0

/-- Vis-viva equation: v^2 = mu * (2/r - 1/a)
  Given the radial distance r and semi-major axis a. 
-/
noncomputable def vis_viva_velocity_sq (mu : GravitationalParameter) (r : ℝ) (h_r : r > 0) (a : SemiMajorAxis) : ℝ :=
  mu.mu * (2 / r - 1 / a.a)

/-- Kepler's Third Law (simplified) : T^2 = (4 * π^2 / mu) * a^3 -/
noncomputable def keplers_third_law_period_sq (mu : GravitationalParameter) (a : SemiMajorAxis) : ℝ :=
  (4 * Real.pi ^ 2 / mu.mu) * (a.a ^ 3)

/-- Orbital Energy (Specific orbital energy) e = -mu / 2a = v^2/2 - mu/r -/
noncomputable def specific_orbital_energy (mu : GravitationalParameter) (a : SemiMajorAxis) : ℝ :=
  -mu.mu / (2 * a.a)

end PhysLean.Aerospace.Orbital
