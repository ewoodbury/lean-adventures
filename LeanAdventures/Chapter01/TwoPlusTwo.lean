-- Chapter 1: Basic Number Theory - Even Numbers
import LeanAdventures.Common.Definitions

-- Theorem: Two plus two equals four
theorem two_plus_two_equals_four : 2 + 2 = 4 := by
  -- We can use the 'rfl' tactic, which proves goals of the form 'a = a'
  rw [two_eq_succ_one, two_eq_succ_one]
