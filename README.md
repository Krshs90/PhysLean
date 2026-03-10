# PhysLean

> **Mathematically verified physics laws in Lean 4.**

PhysLean is an open-source library built on Lean 4 and [Mathlib](https://github.com/leanprover-community/mathlib4) that formalizes core concepts in mechanics and aerospace engineering. By leveraging the power of interactive theorem proving, PhysLean ensures that computational physics models and equations are rigorous, logically sound, and mathematically verified.

## Features

- **Mechanics:** 
  - *Kinematics:* 1D to 3D motion, projectile motion equations.
  - *Dynamics:* Newton's Laws of Motion, Momentum, Energy equations.
- **Aerospace:**
  - *Aerodynamics:* Lift and drag equations, standard atmosphere models.
  - *Orbital Mechanics:* Kepler's laws, Vis-viva equation, Hohmann transfers.
  - *Rocketry:* Tsiolkovsky rocket equation, specific impulse, and thrust models.

## Installation

Ensure you have [Elan](https://github.com/leanprover/elan) installed (the Lean toolchain manager).

1. Clone the repository:
   ```bash
   git clone https://github.com/Krshs90/PhysLean.git
   cd PhysLean
   ```
2. Build the project and download Mathlib dependencies:
   ```bash
   lake exe cache get
   lake build
   ```

## Usage

You can import modules directly into your Lean files:

```lean
import PhysLean.Mechanics.Dynamics
import PhysLean.Aerospace.Rocket

-- Access verified theorems and definitions
#check PhysLean.Mechanics.Dynamics.newtons_second_law
```

## Contributing

Contributions to add more physical laws, formalize advanced concepts, or improve existing proofs are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
