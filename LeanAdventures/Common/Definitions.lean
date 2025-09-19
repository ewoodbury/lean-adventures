-- Common definitions and imports used across multiple chapters
import Mathlib.Data.Int.Basic
import Mathlib.Algebra.Ring.Basic

-- Basic definitions that might be used in multiple chapters
def is_even (n : Int) : Prop := ∃ k : Int, n = 2 * k

def is_odd (n : Int) : Prop := ∃ k : Int, n = 2 * k + 1
