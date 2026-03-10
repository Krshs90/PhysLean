import PhysLean.Mechanics.Kinematics

namespace PhysLean.Mechanics.Dynamics

open PhysLean.Mechanics.Kinematics

/-- Mass is a positive real number. -/
structure Mass where
  m : ℝ
  h_pos : m > 0

/-- Force in 1D. -/
def Force1D := ℝ

/-- Newton's Second Law of Motion: F = ma -/
def newtons_second_law (m : Mass) (a : ℝ) : Force1D :=
  m.m * a

/-- Momentum: p = mv -/
def momentum1D (m : Mass) (v : ℝ) : ℝ :=
  m.m * v

/-- 
  Newton's First Law: An object at rest stays at rest, and an object in motion 
  stays in motion with the same speed and in the same direction 
  unless acted upon by an unbalanced force.
-/
theorem newtons_first_law 
  (m : Mass) (v : ℝ → ℝ) (t : ℝ) (h_force : newtons_second_law m (Acceleration1D v t) = (0 : ℝ)) :
  Acceleration1D v t = 0 := by
  have h1 : m.m * Acceleration1D v t = 0 := h_force
  have h2 : m.m ≠ 0 := by linarith [m.h_pos]
  exact mul_eq_zero.mp h1 |>.resolve_left h2

/-- Work-Energy Theorem: Work done translates to change in kinetic energy -/
def kinetic_energy (m : Mass) (v : ℝ) : ℝ :=
  0.5 * m.m * v ^ 2

end PhysLean.Mechanics.Dynamics
