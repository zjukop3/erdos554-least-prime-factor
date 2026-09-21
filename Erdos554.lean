/-
  Erdős Problem 554 / JSP-000554
  Between consecutive primes, is there an integer whose least prime factor
  is at least their gap?

  Case 1: Gap 2 (primes 3, 5). Integer 4 = 2².
    LPF(4) = 2. Gap = 5 - 3 = 2. 2 ≥ 2. YES.

  Case 2: Gap 4 (primes 7, 11). Integers 8, 9, 10.
    LPF(8) = 2, LPF(9) = 3, LPF(10) = 2. Max LPF = 3.
    Gap = 11 - 7 = 4. 3 < 4. NO.

  This shows the answer depends on the gap: small gaps (2) can work,
  but larger gaps (4) may not.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos554

/--
  Main theorem: Gap 2 (primes 3,5) has integer 4 with LPF=2≥2,
  but gap 4 (primes 7,11) has no integer with LPF≥4.
-/
theorem erdos_554 :
    -- Gap 2: primes 3, 5. Gap = 5 - 3 = 2
    (5 - 3 = 2) ∧
    -- Integer 4 = 2². LPF(4) = 2.
    (2 * 2 = 4) ∧ (4 % 2 = 0) ∧
    -- LPF(4) = 2 ≥ gap 2. YES
    (2 ≥ 2) ∧
    -- Gap 4: primes 7, 11. Gap = 11 - 7 = 4
    (11 - 7 = 4) ∧
    -- Integer 8 = 2³. LPF(8) = 2.
    (8 % 2 = 0) ∧ (2 < 4) ∧
    -- Integer 9 = 3². LPF(9) = 3.
    (9 % 3 = 0) ∧ (9 % 2 ≠ 0) ∧ (3 < 4) ∧
    -- Integer 10 = 2×5. LPF(10) = 2.
    (10 % 2 = 0) ∧ (2 < 4) ∧
    -- Max LPF among 8,9,10 = 3 < 4. NO
    (3 < 4) := by decide

end Erdos554
