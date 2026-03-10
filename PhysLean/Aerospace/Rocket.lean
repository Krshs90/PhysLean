import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

namespace PhysLean.Aerospace.Rocket

/-- Specific impulse (Isp) in seconds. -/
structure SpecificImpulse where
  Isp : ℝ
  h_pos : Isp > 0

/-- Standard gravity (g0 ≈ 9.80665 m/s^2). -/
def g0 : ℝ := 9.80665

/-- Tsiolkovsky rocket equation: Δv = Isp * g0 * ln(m0 / mf). Computes the change in velocity (Delta-v). -/
noncomputable def tsiolkovsky_delta_v (isp : SpecificImpulse) (m0 mf : ℝ) (h_m0 : m0 > 0) (h_mf : mf > 0) (h_mass : m0 ≥ mf) : ℝ :=
  isp.Isp * g0 * Real.log (m0 / mf)

/-- Thrust equation: T = v_e * mass_flow_rate. where v_e is the effective exhaust velocity (Isp * g0) -/
def effective_exhaust_velocity (isp : SpecificImpulse) : ℝ :=
  isp.Isp * g0

def rocket_thrust (isp : SpecificImpulse) (mdot : ℝ) : ℝ :=
  (effective_exhaust_velocity isp) * mdot

end PhysLean.Aerospace.Rocket
