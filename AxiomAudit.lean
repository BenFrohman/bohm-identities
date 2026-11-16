/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import BohmIdentities

/-!
# AxiomAudit

Machine-checked Lean 4 module.
-/

#print axioms Bohm.add_neg_self
#print axioms Bohm.cross
#print axioms Bohm.guidance_cleared
#print axioms Bohm.phaseTerm
#print axioms Bohm.quantumPotential_cleared
