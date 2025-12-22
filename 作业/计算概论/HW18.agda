module HW18 where

-- how to input '≗': type \=o
-- Tips: 'f ≗ g' is the same as '∀ xs → f x ≡ g x'

open import Function using (_∘_)
open import Data.List using ([]; _∷_; foldr; map)
open import Data.List.Properties using (foldr-fusion)

-- foldr-fusion : ∀ (h : B → C) {f : A → B → B} {g : A → C → C} (e : B) →
--                (∀ x y → h (f x y) ≡ g x (h y)) →
--                h ∘ foldr f e ≗ foldr g (h e)

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≗_; refl; trans; sym; cong; cong-app; subst)
open import Function using (id; _∘_)
open Eq.≡-Reasoning 

map-is-foldr : {A B : Set} → (f : A → B) → map f ≗ foldr (λ x y → f x ∷ y) []
map-is-foldr f [] = refl
map-is-foldr f (x ∷ xs) rewrite map-is-foldr f xs = refl

foldr-map-fusion : ∀ {A : Set} {B : Set} {C : Set}
  → (f : A → B)
  → (_⊕_ : B → C → C)
  → (e : C)
  → foldr _⊕_ e ∘ map f ≗ foldr (λ a r → f a ⊕ r) e
foldr-map-fusion {A} {B} {C} f _⊕_ e xs =
    begin
        foldr _⊕_ e (map f xs)
    ≡⟨ cong h (map-is-foldr f xs) ⟩
        h (foldr (λ x y → (f x) ∷ y) [] xs)
    ≡⟨ foldr-fusion h {F} {g} [] fuse xs ⟩
        foldr g (h []) xs
    ≡⟨⟩
        foldr (λ a r → f a ⊕ r) e xs
    ∎
        where
            h = foldr _⊕_ e
            g = λ a r → f a ⊕ r
            F = λ x y → (f x) ∷ y
            fuse : ∀ x y → h (F x y) ≡ g x (h y)
            fuse x y = refl


map-composition : ∀ {A : Set} {B : Set} {C : Set}
  → (f : B → C)
  → (g : A → B)
  → map f ∘ map g ≗ map (f ∘ g)
map-composition f g xs = 
    begin
        map f (map g xs)
    ≡⟨ map-is-foldr f (map g xs) ⟩
        foldr F [] (map g xs)
    ≡⟨ foldr-map-fusion g F [] xs ⟩
        foldr (λ a r → F (g a) r) [] xs
    ≡⟨⟩
        foldr FG [] xs
    ≡⟨ sym (map-is-foldr (f ∘ g) xs) ⟩
        map (f ∘ g) xs
    ∎
        where
            F = λ x y → (f x) ∷ y
            FG = λ x y → ((f ∘ g) x) ∷ y
