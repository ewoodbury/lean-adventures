theorem add_assoc (a b c : ℕ) : a + b + c = a + (b + c) := by
induction b with d bd
rw [add_zero]
rw [zero_add]
rfl

rw [succ_add]
rw [add_succ]
rw [succ_add]
rw [add_succ]
rw [bd]
rfl
