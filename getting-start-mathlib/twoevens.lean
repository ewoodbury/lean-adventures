def is_even (n : Int) : Prop := ∃ k : Int, n = 2 * k

theorem even_plus_even (a b : Int) (ha : is_even a) (hb : is_even b) : is_even (a + b) := by
  -- Rewrite ha and hb using the definition of is_even
  -- use * to define showing this for ha, hb, and goal
  rw [is_even] at *

  -- From our hypothesis 'ha : ∃ k, a = 2 * k', we can obtain such a 'k'.
  -- The 'rcases' tactic breaks down the hypothesis. We'll call the integer k₁
  -- and the proof that a = 2 * k₁ we'll call h₁.
  rcases ha with ⟨k₁, h₁⟩

  -- We do the same for our hypothesis 'hb'.
  rcases hb with ⟨k₂, h₂⟩

  -- Our goal is now '∃ k, a + b = 2 * k'. To prove an "exists" statement,
  -- we must provide a candidate. The obvious candidate is k₁ + k₂.
  -- We use the existential constructor directly.
  exact ⟨k₁ + k₂, by
    -- Now our goal is to prove 'a + b = 2 * (k₁ + k₂)'.
    -- We can use the facts h₁ (a = 2 * k₁) and h₂ (b = 2 * k₂) to simplify this.
    rw [h₁, h₂]
    -- Our goal is now '2 * k₁ + 2 * k₂ = 2 * (k₁ + k₂)'.
    -- This follows from the distributive property: 2 * (k₁ + k₂) = 2 * k₁ + 2 * k₂
    simp [Int.mul_add]
  ⟩
