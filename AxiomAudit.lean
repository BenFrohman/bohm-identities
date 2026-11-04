-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import BohmIdentities

#print axioms Bohm.add_neg_self
#print axioms Bohm.cross
#print axioms Bohm.guidance_cleared
#print axioms Bohm.phaseTerm
#print axioms Bohm.quantumPotential_cleared
