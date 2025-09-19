theorem add_comm (a b : ℕ) : a + b = b + a := by
induction b with d bd

rw [add_zero]
rw [zero_add]
rfl

rw [succ_add]
rw [add_succ]
rw [bd]
rfl
