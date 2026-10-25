# Bohm identities

<!-- ZENODO-PROVENANCE-HEADER -->
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23629497.svg)](https://doi.org/10.5281/zenodo.23629497)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![ORCID](https://img.shields.io/badge/ORCID-0009--0006--7068--3718-brightgreen.svg)](https://orcid.org/0009-0006-7068-3718)

> **Author:** Benjamin Stanley Frohman ([ORCID: 0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))  
> **Origin Provenance:** `2026-10-06 08:18:54 CDT (Git Initial Commit)`  
> **Zenodo Archive & DOI:** [`10.5281/zenodo.23629497`](https://doi.org/10.5281/zenodo.23629497) ([Zenodo Record `23629497`](https://zenodo.org/records/23629497))  
> **Primary Manuscript PDF:** [`Frohman_Bohm_Madelung_Identities_Lean4_2026.pdf`](./Frohman_Bohm_Madelung_Identities_Lean4_2026.pdf)  
> **Copyright & License:** Copyright (c) 2026 Benjamin Stanley Frohman. Licensed under the Apache License, Version 2.0 ([`LICENSE`](./LICENSE), [`NOTICE`](./NOTICE)).
<!-- /ZENODO-PROVENANCE-HEADER -->


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
