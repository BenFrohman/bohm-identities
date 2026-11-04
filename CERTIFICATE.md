# Verification certificate

**Paper:** Cleared Guidance and Quantum-Potential Identities for the Polar Form of a Wave Function over the Integers: a Lean~4 Formalization
**Author:** Benjamin Stanley Frohman (frohmanbenjamin@gmail.com)
**PDF:** `Frohman_Bohm_Madelung_Identities_Lean4_2026.pdf`

| Item | Value |
|---|---|
| Verified commit | `6e24d96576d0d54e28ebf882bec19ac56c5a5af6` |
| Lean toolchain | `leanprover/lean4:v4.22.0` |
| Mathlib | none (Lean core only) |
| CI run (build + axiom audit + no-sorry scan, passed) | https://github.com/BenFrohman/bohm-identities/actions/runs/41794833590 |
| Source tarball SHA-256 (verified commit) | `21ae9b7cfa87fb56aeca37596df4c0733d6093309540496913081fb16d243437` |

- `lake build` succeeds with the pinned toolchain.
- No `sorry`, no `admit`, no `native_decide`, and no user-declared `axiom` in the Lean sources (enforced in CI by `scripts/check_no_sorry.py`).
- All 5 audited theorems depend only on Lean's standard axioms `propext`, `Classical.choice`, `Quot.sound` (or a subset).

## `#print axioms` output (`AxiomAudit.lean`)

```
'Bohm.add_neg_self' depends on axioms: [propext]
'Bohm.cross' depends on axioms: [propext]
'Bohm.guidance_cleared' depends on axioms: [propext]
'Bohm.phaseTerm' depends on axioms: [propext]
'Bohm.quantumPotential_cleared' depends on axioms: [propext]
```

The paper's claims correspond one-to-one with the Lean declarations listed in its "Correspondence between claims and Lean declarations" section; the Lean statements are the source of truth.
