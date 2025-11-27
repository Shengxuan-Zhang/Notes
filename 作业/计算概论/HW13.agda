module HW13 where

open import Data.Bool using (Bool; true; false; if_then_else_)

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _∎)
-- open Eq.≡-Reasoning using (begin_; step-≡-⟩; step-≡-⟨; step-≡-∣; _∎)

-- problem 17.1
data day : Set where
    monday : day
    tuesday : day
    wednesday : day
    thursday : day
    friday : day
    saturday : day
    sunday : day

  -- fill in your answers here

-- problem 17.2
nextday : day → day
nextday monday = tuesday
nextday tuesday = wednesday
nextday wednesday = thursday
nextday thursday = friday
nextday friday = saturday
nextday saturday = sunday
nextday sunday = monday

-- problem 17.3
ite-arg : ∀ {ℓ ℓ′} {A : Set ℓ} {B : Set ℓ′}
  → (f : A → B)
  → (b : Bool)
  → (x y : A)
    ----------------------
  → f (if b then x else y)
  ≡ (if b then f x else f y)
ite-arg f true x y = refl
ite-arg f false x y = refl
