theorem succ_add (a b : ℕ) : succ a + b = succ (a + b) := by
induction b with d bd
rw [add_zero]
rw [add_zero]
rfl

rw [add_succ]
rw [add_succ]
rw [bd]
rfl
