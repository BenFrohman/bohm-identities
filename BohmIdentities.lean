/-!
# Guidance identity, checked with Lean 4.16.0, no Mathlib

`lean BohmIdentities.lean` exits 0.

`dψ` is the product rule for `R · (c, s)` with phase derivative `dS`.
That product rule is the hypothesis. The conclusion is the cleared form of
`Im(dψ / ψ) = dS`:

  Im(dψ · conj ψ) = dS · |ψ|²

The quantum-potential line is the prefactor identity, also cleared of division.
Winding, the oscillator eigenvalue, and the split-step are not in this file.
-/

namespace Bohm

theorem add_neg_self (a : Int) : a + -a = 0 := by
  rw [Int.add_comm, Int.add_left_neg]

/-- The two cross terms in the product rule are the same integer. -/
theorem cross (dR R c s : Int) :
    (dR * s) * (R * c) = (dR * c) * (R * s) := by
  rw [Int.mul_assoc, Int.mul_assoc, Int.mul_left_comm s R c,
      Int.mul_left_comm c R s, Int.mul_comm s c]

/-- A phase term factors out `dS`. -/
theorem phaseTerm (R c dS : Int) :
    (R * c * dS) * (R * c) = dS * (R * c * (R * c)) := by
  rw [Int.mul_assoc (R * c) dS (R * c), Int.mul_left_comm (R * c) dS (R * c)]

/-- Cleared guidance law.

Left side is `Im(dψ · conj ψ)` for
`ψ = (R c, R s)` and `dψ = (dR c − R s dS, dR s + R c dS)`.
Right side is `dS · |ψ|²`. Dividing by `|ψ|²` when `ψ ≠ 0` is `Im(dψ / ψ) = dS`. -/
theorem guidance_cleared (R dR c s dS : Int) :
    ((dR * s + R * c * dS) * (R * c) - (dR * c - R * s * dS) * (R * s))
      = dS * (R * c * (R * c) + R * s * (R * s)) := by
  have hcross : (dR * s) * (R * c) + -((dR * c) * (R * s)) = 0 := by
    rw [cross dR R c s, add_neg_self]
  have hphaseL := phaseTerm R c dS
  have hphaseR := phaseTerm R s dS
  rw [Int.sub_eq_add_neg, Int.add_mul, Int.sub_eq_add_neg, Int.add_mul, Int.neg_add]
  rw [Int.neg_mul, Int.neg_neg]
  calc
    (dR * s) * (R * c) + (R * c * dS) * (R * c) +
        (-((dR * c) * (R * s)) + (R * s * dS) * (R * s))
      = ((dR * s) * (R * c) + -((dR * c) * (R * s))) +
          ((R * c * dS) * (R * c) + (R * s * dS) * (R * s)) := by
        rw [Int.add_assoc, Int.add_assoc]
        rw [Int.add_left_comm ((R * c * dS) * (R * c)) (-((dR * c) * (R * s)))]
    _ = 0 + ((R * c * dS) * (R * c) + (R * s * dS) * (R * s)) := by rw [hcross]
    _ = (R * c * dS) * (R * c) + (R * s * dS) * (R * s) := by rw [Int.zero_add]
    _ = dS * (R * c * (R * c)) + dS * (R * s * (R * s)) := by rw [hphaseL, hphaseR]
    _ = dS * (R * c * (R * c) + R * s * (R * s)) := by rw [← Int.mul_add]

/-- `−(1/2) (ΔR) / R` and `−ΔR / (2R)` agree after clearing the denominator `2R`. -/
theorem quantumPotential_cleared (ΔR R : Int) :
    (-ΔR) * (2 * R) = (2 : Int) * ((-ΔR) * R) := by
  rw [← Int.mul_assoc, Int.mul_comm (-ΔR) 2, Int.mul_assoc]

end Bohm
