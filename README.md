# Bohm identities

Core Lean 4 proof of the cleared Bohmian guidance identity. No Mathlib.

Checked with Lean 4.16.0: `lean BohmIdentities.lean` exits 0.

The product rule for `ψ = R · (c, s)` is the hypothesis. The theorem is the cleared form of `Im(dψ / ψ) = dS`:

```
Im(dψ · conj ψ) = dS · |ψ|²
```

`quantumPotential_cleared` is the prefactor identity `−½ (ΔR) / R = −ΔR / (2R)`, also cleared of division.

Not in this file: the winding `∮ ∇S · dl = 2π` around a simple zero, the oscillator ground-state eigenvalue, and the split-step integrator. Those are analysis or numerics.

## License

Copyright (c) 2026 Benjamin Stanley Frohman.

Licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE).
The Lean module carries `SPDX-License-Identifier: Apache-2.0`.

The canonical repository is this one. [BenFrohman/BohmIdentities](https://github.com/BenFrohman/BohmIdentities) is an empty name collision and does not contain the proof.
