module HW14 where

-- How to input the Unicode characters
-- ===================================
-- ℕ    \bN
-- →    \->
-- ∷    \::
-- ≡    \==
-- ⟨    \<
-- ⟩    \>
-- ˘    \u{}

open import Data.Nat using (ℕ; zero; suc; _+_; _*_)
open import Data.Bool using (Bool; true; false; _∨_; if_then_else_)
open import Data.Vec using (Vec; []; _∷_)
open import Data.List using (List; []; _∷_)

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; sym; trans; cong; cong-app)
-- open Eq.≡-Reasoning using (begin_; step-≡-⟩; step-≡-⟨; step-≡-∣; _∎)
open Eq.≡-Reasoning using (begin_; _∎)


-- Chap. 18

-- problem 1.1: commutativity of _*_

+0 : (x : ℕ) → x + 0 ≡ x
+0 0 = refl
+0 (suc x) rewrite +0 x = refl

+assoc : (x y z : ℕ) → x + (y + z) ≡ (x + y) + z
+assoc 0 y z = refl
+assoc (suc x) y z rewrite +assoc x y z = refl

+suc : (x y : ℕ) → x + (suc y) ≡ suc (x + y)
+suc 0 y = refl
+suc (suc x) y rewrite +suc x y = refl

+comm : (x y : ℕ) → x + y ≡ y + x
+comm 0 y rewrite +0 y = refl
+comm (suc x) y rewrite +suc y x | +comm x y = refl

mul0 : (x : ℕ) → x * 0 ≡ 0
mul0 0 = refl
mul0 (suc n) = mul0 n

mulsuc : (x y : ℕ) → x * (suc y) ≡ x + x * y
mulsuc 0 y = refl
mulsuc (suc x) y rewrite mulsuc x y | +assoc y x (x * y) | +comm y x | +assoc x y (x * y) = refl

-- (suc x) * (suc y) = x * suc y + suc y = x + x * y + suc y =? suc x + suc x * y = suc x + x * y + y

*-comm : (x y : ℕ) → x * y ≡ y * x
*-comm 0 y rewrite mul0 y = refl
*-comm (suc x) y rewrite mulsuc y x | *-comm x y = refl


-- problem 1.2: associativity of _*_
*+fac : (x y z : ℕ) → (x + y) * z ≡ x * z + y * z
*+fac 0 y z = refl
*+fac (suc x) y z rewrite *-comm (suc (x + y) ) z | mulsuc z (x + y) | *-comm z (x + y) | *+fac x y z | +assoc z (x * z) (y * z) = refl

*-assoc : (x y z : ℕ) → (x * y) * z ≡ x * (y * z)
*-assoc 0 _ _ = refl
*-assoc (suc x) y z rewrite *+fac y (x * y) z | *-assoc x y z = refl

-- problem 2: prove the theorems.
-- remark: the standard library provides the following comparison based on decidability
--   _<?_ : (x y : ℕ) → Dec (x < y)
-- where `Dec` is the type for decidability;
-- and also the following comparison as inductive relation
--   _<_ : (x y : ℕ) → Set
-- so neither is the one we want.
-- note: read more on decidability here:
--  * stdlib: https://agda.github.io/agda-stdlib/Relation.Nullary.Decidable.Core.html#1476
--  * PLFA: https://plfa.github.io/Decidable/
-- so we just provide the same definition as given in the slides:
-- (note that stdlib use (Bool; true; false) instead of (𝔹; tt; ff))
infix 9 _≟_
_≟_ : (x y : ℕ) → Bool
zero  ≟ zero  = true
zero  ≟ suc _ = false
suc _ ≟ zero  = false
suc x ≟ suc y = x ≟ y

infix 9 _<_
_<_ : (x y : ℕ) → Bool
zero < zero  = false
zero < suc _ = true
suc _ < zero  = false
suc x < suc y = x < y

-- problem 2.1
n≮n : (n : ℕ) → n < n ≡ false
n≮n 0 = refl
n≮n (suc x) rewrite n≮n x = refl

-- problem 2.2


<-antisym : (x y : ℕ) → x < y ≡ true → y < x ≡ false
<-antisym 0 0 ()
<-antisym 0 (suc y) p = refl
<-antisym (suc x) (suc y) p rewrite <-antisym x y p = refl

-- problem 2.3
<-trichotomy : (x y : ℕ) → x < y ∨ x ≟ y ∨ y < x ≡ true
<-trichotomy 0 0 = refl
<-trichotomy 0 (suc y) = refl
<-trichotomy (suc x) 0 = refl
<-trichotomy (suc x) (suc y) rewrite <-trichotomy x y = refl


-- Chap. 19

-- This is equivalent to adding a `(A : Set)` to every type with a free variable `A`
variable
  A : Set

takeWhile : (p : A → Bool) → List A → List A
takeWhile p [] = []
takeWhile p (x ∷ xs) with p x
takeWhile p (x ∷ xs) | true = x ∷ takeWhile p xs
takeWhile p (x ∷ xs) | false = []

-- this function is usually named `replicate` instead of `repeat`
replicate : ℕ → A → List A
replicate 0 _ = []
replicate (suc x) a = a ∷ replicate x a

prop : (a : A) (n : ℕ)
  → (p : A → Bool)
  → p a ≡ true
    -------------------------------------
  → takeWhile p (replicate n a) ≡ replicate n a
prop _ 0 _ _ = refl
prop a (suc n) p q rewrite q | prop a n p q = refl

