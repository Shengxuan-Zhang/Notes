module HW16 where

-- How to type those Unicode characters:
-- →   \->
-- ≡   \==
-- ≢   \==n
-- ⟨   \<
-- ⟩   \>
-- ∎   \qed
-- ∘   \o
-- ∷   \::
-- ℕ   \bN
-- ⊕   \oplus
-- ˡ   \^l       (4th candidate, use your right arrow key to select)
-- ʳ   \^r       (4th candidate, use your right arrow key to select)
-- ₁   \_1
-- ×   \x
-- ∀   \all
-- Σ   \Sigma
-- ∃   \ex
-- ⊆   \subseteq
-- ≤   \le
-- ⊔   \sqcup
-- ¬   \neg
-- ⊥   \bot
-- ∈   \in

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl; trans; sym; cong; cong-app; subst)
open import Function using (id; _∘_)
open Eq.≡-Reasoning 

-- Chapter 23
module problem-1 where

  open import Data.List using (List; []; _∷_; _++_)

  ++-assoc : ∀ {A : Set}
      (xs ys zs : List A)
      -----------------------------------
    → (xs ++ ys) ++ zs ≡ xs ++ (ys ++ zs)
  ++-assoc [] ys zs = refl
  ++-assoc (x ∷ xs) ys zs rewrite ++-assoc xs ys zs = refl

  -- tips: to input the superscript l (ˡ), type \^l and use your
  --       arrow keys to select it (should be the fourth candidate).
  ++-identityˡ : ∀ {A : Set}
      (xs : List A)
      -------------
    → [] ++ xs ≡ xs
  ++-identityˡ xs = refl

  -- you might have already guessed it: type \^r for superscript r (ʳ)
  -- again, use your arrow keys to select it (the fourth candidate). 
  ++-identityʳ : ∀ {A : Set}
      (xs : List A)
    → xs ++ [] ≡ xs
  ++-identityʳ [] = refl
  ++-identityʳ (x ∷ xs) rewrite ++-identityʳ xs = refl

module problem-2 where

  open import Data.List using (List; []; _∷_; _++_; foldr)

  -- tips: to input ⊗, type \otimes
  foldr-++ : ∀ {A : Set}
      (_⊗_ : A → A → A)
      (e : A)
      (xs ys : List A)
      -----------------------------
    → foldr _⊗_ e (xs ++ ys)
    ≡ foldr _⊗_ (foldr _⊗_ e ys) xs
  foldr-++ _⊗_ e [] ys = refl
  foldr-++ _⊗_ e (x ∷ xs) ys rewrite foldr-++ _⊗_ e xs ys = refl


module problem-3 (
    extensionality : ∀ {A : Set} {B : A → Set}
        {f g : (x : A) → B x}
      → ((x : A) → f x ≡ g x)
        ---------------------
      → f ≡ g
  ) where

  open import Data.List using (List; []; _∷_; _++_)

  reverse : ∀ {A : Set} → List A → List A
  reverse []       = []
  reverse (x ∷ xs) = reverse xs ++ (x ∷ [])

  -- hint: you might want to introduce an extra lemma to prove this.
  ++reverse : ∀ {A : Set} → (xs : List A) → (y : A) → reverse (xs ++ y ∷ []) ≡ y ∷ reverse xs
  ++reverse [] y = refl
  ++reverse (x ∷ xs) y rewrite ++reverse xs y = refl 

  reverse-involutive : ∀ {A : Set} → reverse {A} ∘ reverse {A} ≡ id
  reverse-involutive = extensionality lemma 
      where lemma : ∀ {A : Set} → (xs : List A) → ( reverse {A} ∘ reverse {A} ) xs ≡ id xs
            lemma [] = refl
            lemma (x ∷ xs) rewrite ++reverse (reverse xs) x | lemma xs = refl
            

  -- bonus: fast-reverse-involutive
  -- this is only for practice, not part of the homework this week

  fast-reverse : ∀ {A : Set} → List A → List A
  fast-reverse = helper []
    module FastReverse where
    helper : ∀ {A : Set} → List A → List A → List A
    helper res []       = res
    helper res (x ∷ xs) = helper (x ∷ res) xs

  reverse-helper-lem : {A : Set} → (xs ys : List A) → FastReverse.helper {A} xs ys ≡ reverse ys ++ xs
  reverse-helper-lem {A} xs [] = refl
  reverse-helper-lem {A} xs (y ∷ ys) =
    begin
      FastReverse.helper {A} xs (y ∷ ys)
    ≡⟨⟩
      FastReverse.helper {A} (y ∷ xs) ys
    ≡⟨ reverse-helper-lem {A} (y ∷ xs) ys ⟩
      reverse ys ++ (y ∷ xs) 
    ≡⟨ sym ( problem-1.++-assoc (reverse ys) (y ∷ []) xs ) ⟩
      (reverse ys ++ (y ∷ [])) ++ xs
    ≡⟨⟩
      reverse (y ∷ ys) ++ xs
    ∎
  
  =-fast-reverse : {A : Set} → fast-reverse {A} ≡ reverse {A}
  =-fast-reverse {A} = extensionality lemma
    where
      lemma : (xs : List A) → fast-reverse xs ≡ reverse xs
      lemma xs =
        begin
          fast-reverse xs
        ≡⟨⟩
          FastReverse.helper {A} [] xs
        ≡⟨ reverse-helper-lem [] xs ⟩
          reverse xs ++ []
        ≡⟨ problem-1.++-identityʳ (reverse xs) ⟩
          reverse xs
        ∎

  fast-reverse-involutive : ∀ {A : Set}
    → fast-reverse {A} ∘ fast-reverse {A} ≡ id
  fast-reverse-involutive {A} = 
    begin
      fast-reverse {A} ∘ fast-reverse {A}
    ≡⟨ cong (fast-reverse {A} ∘_) (=-fast-reverse {A}) ⟩
      fast-reverse {A} ∘ reverse {A}
    ≡⟨ cong (_∘ reverse {A}) (=-fast-reverse {A}) ⟩
      reverse {A} ∘ reverse {A}
    ≡⟨ reverse-involutive {A} ⟩
      id
    ∎

module semigroup where
  record IsSemigroup {A : Set} (_⊕_ : A → A → A) : Set where
    field assoc : ∀ x y z → (x ⊕ y) ⊕ z ≡ x ⊕ (y ⊕ z)

  open IsSemigroup public

  open import Data.Nat using (_+_)
  open import Data.Nat.Properties using (+-assoc)
  ℕ-add-is-semigroup : IsSemigroup _+_
  ℕ-add-is-semigroup .assoc = +-assoc

  open import Data.Nat using (_⊔_)
  open import Data.Nat.Properties using (⊔-assoc)
  ℕ-⊔-is-semigroup : IsSemigroup _⊔_
  ℕ-⊔-is-semigroup .assoc = ⊔-assoc

  open import Data.List using (List; _++_; [])
  open import Data.List.Properties using (++-assoc)
  List-++-is-semigroup : ∀ {A : Set} → IsSemigroup {List A} _++_
  List-++-is-semigroup .assoc = ++-assoc

open semigroup

module monoid where
  record IsMonoid {A : Set} (e : A) (_⊕_ : A → A → A) : Set where
    field
      is-semigroup : IsSemigroup _⊕_
      identityˡ : ∀ x → e ⊕ x ≡ x
      identityʳ : ∀ x → x ⊕ e ≡ x

  open IsMonoid public

  open import Data.Nat using (_+_)
  open import Data.Nat.Properties using (+-identityˡ; +-identityʳ)
  ℕ-add-is-monoid : IsMonoid 0 _+_
  ℕ-add-is-monoid .is-semigroup = ℕ-add-is-semigroup
  ℕ-add-is-monoid .identityˡ = +-identityˡ
  ℕ-add-is-monoid .identityʳ = +-identityʳ

  open import Data.Nat using (_⊔_)
  open import Data.Nat.Properties using (⊔-identityˡ; ⊔-identityʳ)
  ℕ-⊔-is-monoid : IsMonoid 0 _⊔_
  ℕ-⊔-is-monoid .is-semigroup = ℕ-⊔-is-semigroup
  ℕ-⊔-is-monoid .identityˡ = ⊔-identityˡ
  ℕ-⊔-is-monoid .identityʳ = ⊔-identityʳ

  open import Data.List using (List; _++_; [])
  open import Data.List.Properties using (++-identityˡ; ++-identityʳ)
  List-++-is-monoid : ∀ {A : Set} → IsMonoid {List A} [] _++_
  List-++-is-monoid .is-semigroup = List-++-is-semigroup
  List-++-is-monoid .identityˡ = ++-identityˡ
  List-++-is-monoid .identityʳ = ++-identityʳ

open monoid

module MSS (
    extensionality : ∀ {A : Set} {B : A → Set}
        {f g : (x : A) → B x}
      → ((x : A) → f x ≡ g x)
        ---------------------
      → f ≡ g
  ) where

  open import Data.Nat using (ℕ; _+_; zero; suc; _⊔_)
  open import Data.List using (List; []; _∷_; [_]; _++_; foldl; foldr; map; scanl; scanr)

  inits : ∀ {A : Set} → List A → List (List A)
  inits = scanl _++_ [] ∘ map [_]

  tails : ∀ {A : Set} → List A → List (List A)
  tails = scanr _++_ [] ∘ map [_]

  concat : ∀ {A : Set} → List (List A) → List A
  concat = foldr _++_ []

  segs : ∀ {A : Set} → List A → List (List A)
  segs = concat ∘ map tails ∘ inits

  sum : List ℕ → ℕ
  sum = foldl _+_ 0

  maximum : List ℕ → ℕ
  maximum = foldl _⊔_ 0

  mss : List ℕ → ℕ
  mss = maximum ∘ map sum ∘ segs

  -- Did you know there are plenty of useful theorems in the standard library?
  open import Data.Nat.Properties using (+-distribˡ-⊔; +-distribʳ-⊔)
  -- +-distribˡ-⊔ : ∀ x y z → x + (y ⊔ z) ≡ (x + y) ⊔ (x + z)
  -- +-distribʳ-⊔ : ∀ z x y → (x ⊔ y) + z ≡ (x + z) ⊔ (y + z)


  mss-op : (x y : ℕ) → ℕ
  mss-op x y = (x + y) ⊔ 0
  mss-fast : List ℕ → ℕ
  mss-fast = maximum ∘ scanl mss-op 0

  ++fold : {A : Set} (e : A) (f : A → A → A) (xs ys : List A) → foldl f e (xs ++ ys) ≡ foldl f (foldl f e xs) ys
  ++fold e f [] ys = refl
  ++fold e f (x ∷ xs) ys rewrite ++fold (f e x) f xs ys = refl
  ++map : {A B : Set} (f : A → B) (xs ys : List A) → map f (xs ++ ys) ≡ map f xs ++ map f ys
  ++map f [] ys = refl
  ++map f (x ∷ xs) ys rewrite ++map f xs ys = refl

  fold-scan-lem : {A : Set} (e : A) (f : A → A → A) (xs ys : List A) 
                  → map (foldl f e) (scanl _++_ ys (map [_] xs) ) ≡ scanl f (foldl f e ys) xs
  fold-scan-lem e f [] ys = refl
  fold-scan-lem e f (x ∷ xs) ys = 
    begin
      map (foldl f e) (scanl _++_ ys (map [_] (x ∷ xs ) ) )
    ≡⟨⟩
      map (foldl f e) (scanl _++_ ys ( ([_] x) ∷ (map [_] xs) ) )
    ≡⟨⟩
      map (foldl f e) ( ys ∷ scanl _++_ (ys ++ [_] x) (map [_] xs) )
    ≡⟨⟩
      (foldl f e ys) ∷ map (foldl f e) (scanl _++_ (ys ++ [_] x) (map [_] xs) )
    ≡⟨ cong ( (foldl f e ys) ∷_ ) ( fold-scan-lem e f xs (ys ++ [_] x) ) ⟩
      (foldl f e ys) ∷ scanl f (foldl f e (ys ++ [_] x)) (xs)
    ≡⟨ cong ( λ var → (foldl f e ys) ∷ scanl f var xs  ) (++fold e f ys ([_] x))⟩
      (foldl f e ys) ∷ scanl f ( f (foldl f e ys) x) (xs)
    ≡⟨⟩
      scanl f (foldl f e ys) (x ∷ xs)
    ∎
----
  fold-scan : {A : Set} → (e : A) → (f : A → A → A) → map (foldl f e) ∘ inits ≡ scanl f e
  fold-scan {A} e f = extensionality lemma
      where lemma : (xs : List A) → (map (foldl f e) ∘ inits) xs ≡ scanl f e xs
            lemma xs = begin 
                              map (foldl f e) (scanl _++_ [] ( map [_] xs) )
                            ≡⟨ fold-scan-lem e f xs [] ⟩
                              scanl f (foldl f e []) xs
                            ≡⟨⟩
                              scanl f e xs
                            ∎
  
  ---------
  monoid-shift : {A : Set} (u : A) (ys : List A) (_⊕_ : A → A → A) (e : A) (p : IsMonoid e _⊕_) 
                → foldl _⊕_ u ys ≡ u ⊕ foldl _⊕_ e ys
  monoid-shift u [] _⊕_ e p =
      begin
        foldl _⊕_ u []
      ≡⟨⟩
        u
      ≡⟨ sym (identityr u) ⟩
        u ⊕ e
      ≡⟨⟩
        u ⊕ ( foldl _⊕_ e [] )
      ∎
        where
          open IsMonoid p renaming (identityʳ to identityr)
  monoid-shift u (y ∷ ys) _⊕_ e p =
    begin
      foldl _⊕_ u (y ∷ ys)
    ≡⟨⟩
      foldl _⊕_ (u ⊕ y) ys
    ≡⟨ monoid-shift (u ⊕ y) ys _⊕_ e p ⟩
      (u ⊕ y) ⊕ foldl _⊕_ e ys
    ≡⟨ assoc-⊕ u y (foldl _⊕_ e ys) ⟩
      u ⊕ (y ⊕ foldl _⊕_ e ys)
    ≡⟨ cong (u ⊕_) ( sym (monoid-shift y ys _⊕_ e p) )⟩
      u ⊕ (foldl _⊕_ y ys)
    ≡⟨ cong (λ z → u ⊕ foldl _⊕_ z ys) (sym (identityl y)) ⟩
      u ⊕ ( foldl _⊕_ e (y ∷ ys) )
    ∎
      where
        open IsMonoid p renaming (identityˡ to identityl; is-semigroup to is-semigroup-⊕)
        open IsSemigroup is-semigroup-⊕ renaming (assoc to assoc-⊕)

-------
  gen-op : {A : Set} → (_⊗_ : A → A → A) → (e : A) → (_⊕_ : A → A → A) → ( A → A → A)
  gen-op _⊗_ e _⊕_ = λ x y → ( x ⊗ y ) ⊕ e
  horner-rule : {A : Set} → (_⊗_ : A → A → A) → (e : A) → (_⊕_ : A → A → A) → (e2 : A) 
                → (IsMonoid e _⊗_) → (IsMonoid e2 _⊕_) 
                → (distrib : ∀ a b c → (a ⊕ b) ⊗ c ≡ (a ⊗ c) ⊕ (b ⊗ c) ) → (xs : List A)
                → foldl _⊕_ e2 ( map (foldl _⊗_ e) ( tails xs) ) ≡ foldl (gen-op _⊗_ e _⊕_) e xs
  horner-rule _⊗_ e _⊕_ e2 p1 p2 distrib [] =
    begin 
      foldl _⊕_ e2 (map (foldl _⊗_ e) (tails []) )
    ≡⟨⟩
      foldl _⊕_ e2 [ e ]
    ≡⟨ identityˡ-⊕ e ⟩
      e
    ≡⟨⟩
      foldl (gen-op _⊗_ e _⊕_) e []
    ∎
      where
        open IsMonoid p1 renaming (identityˡ to identityˡ-⊗; identityʳ to identityʳ-⊗)
        open IsMonoid p2 renaming (identityˡ to identityˡ-⊕; identityʳ to identityʳ-⊕)

  horner-rule {A} _⊗_ e _⊕_ e2 p1 p2 distrib (x ∷ xs) = 
      begin
        foldl _⊕_ e2 (map (foldl _⊗_ e) (tails (x ∷ xs) ) )
      ≡⟨ cong (λ var → foldl _⊕_ e2 (map (foldl _⊗_ e) var ) ) (tail-lem x xs) ⟩
        foldl _⊕_ e2 (map (foldl _⊗_ e) ( (x ∷ xs) ∷ tails xs) )
      ≡⟨⟩
        foldl _⊕_ e2 ( (foldl _⊗_ e (x ∷ xs)) ∷ map (foldl _⊗_ e) (tails xs) )
      ≡⟨⟩
        foldl _⊕_ ( e2 ⊕ (foldl _⊗_ e (x ∷ xs)) ) ( map (foldl _⊗_ e) (tails xs) )
      ≡⟨ cong (λ var → foldl _⊕_ var ( map (foldl _⊗_ e) (tails xs) )) (identityˡ-⊕ (foldl _⊗_ e (x ∷ xs)) ) ⟩
        foldl _⊕_ (foldl _⊗_ e (x ∷ xs) ) ( map (foldl _⊗_ e) (tails xs) )
      ≡⟨ monoid-shift (foldl _⊗_ e (x ∷ xs)) (map (foldl _⊗_ e) (tails xs)) _⊕_ e2 p2 ⟩
        (foldl _⊗_ e (x ∷ xs)) ⊕ foldl _⊕_ e2 (map (foldl _⊗_ e) (tails xs))
      ≡⟨ cong ((foldl _⊗_ e (x ∷ xs)) ⊕_) (horner-rule _⊗_ e _⊕_ e2 p1 p2 distrib xs)  ⟩
        (foldl _⊗_ e (x ∷ xs)) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs)
      ≡⟨⟩
        (foldl _⊗_ (e ⊗ x) xs) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs)
      ≡⟨ cong (λ var → (foldl _⊗_ var xs) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs)) (identityˡ-⊗ x) ⟩
        (foldl _⊗_ x xs) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs)
      ≡⟨ cong (_⊕ (foldl (gen-op _⊗_ e _⊕_) e xs) ) (monoid-shift x xs _⊗_ e p1) ⟩
        ( x ⊗ foldl _⊗_ e xs) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs)
      ≡⟨ cong (λ var → ( var ⊗ foldl _⊗_ e xs) ⊕ (foldl (gen-op _⊗_ e _⊕_) e xs) ) (sym (identityˡ-⊗ x)) ⟩
        ((e ⊗ x) ⊗ foldl _⊗_ e xs) ⊕ foldl (gen-op _⊗_ e _⊕_) e xs
      ≡⟨ lemma-op (e ⊗ x) e xs ⟩
        foldl (gen-op _⊗_ e _⊕_) ((e ⊗ x) ⊕ e) xs
      ≡⟨⟩ 
        foldl (gen-op _⊗_ e _⊕_) e (x ∷ xs)
        -- (e ⊗ x ⊗ x1 ... ⊗ x_n ) ⊕ (e op x1 op ... op x_n) where op = (x ⊗ y) ⊕ e and 
        -- ?
        -- foldl op e (x x1 ...) = x * ( ) + 1
      ∎
        where
          open IsMonoid p1 renaming (identityˡ to identityˡ-⊗; identityʳ to identityʳ-⊗; is-semigroup to is-semigroup-⊗)
          open IsMonoid p2 renaming (identityˡ to identityˡ-⊕; identityʳ to identityʳ-⊕; is-semigroup to is-semigroup-⊕)
          open IsSemigroup is-semigroup-⊕ renaming (assoc to assoc-⊕)
          open IsSemigroup is-semigroup-⊗ renaming (assoc to assoc-⊗)

          open import Data.Product using (Σ; _,_)
          tails-head : {A : Set} (ys : List A) → Σ (List (List A)) (λ ts → tails ys ≡ ys ∷ ts)
          tails-head [] = [] , refl
          tails-head (y ∷ ys) with tails-head ys
          ... | ts , eq rewrite eq = (ys ∷ ts) , refl

          tail-lem : {A : Set} → (z : A) → (ys : List A) → tails (z ∷ ys) ≡ ( z ∷ ys ) ∷ (tails ys)
          tail-lem z ys with tails-head ys
          ... | ts , eq rewrite eq = refl

          lemma-op : (u v : A) (ys : List A) → 
             (u ⊗ foldl _⊗_ e ys) ⊕ foldl (gen-op _⊗_ e _⊕_) v ys ≡ foldl (gen-op _⊗_ e _⊕_) (u ⊕ v) ys
          lemma-op u v [] rewrite identityʳ-⊗ u = refl
          lemma-op u v (y ∷ ys) = 
            begin
              (u ⊗ foldl _⊗_ e (y ∷ ys)) ⊕ foldl (gen-op _⊗_ e _⊕_) v (y ∷ ys)
            ≡⟨⟩ 
              (u ⊗ foldl _⊗_ (e ⊗ y) ys) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys
            ≡⟨ cong (λ z → (u ⊗ z) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys) (monoid-shift (e ⊗ y) ys _⊗_ e p1) ⟩
              (u ⊗ ((e ⊗ y) ⊗ foldl _⊗_ e ys)) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys
            ≡⟨ cong (λ z → (u ⊗ (z ⊗ foldl _⊗_ e ys)) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys) (identityˡ-⊗ y) ⟩
              (u ⊗ (y ⊗ foldl _⊗_ e ys)) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys
            ≡⟨ cong (λ var → (var ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys)) (sym (assoc-⊗ u y (foldl _⊗_ e ys))) ⟩
              ((u ⊗ y) ⊗ foldl _⊗_ e ys) ⊕ foldl (gen-op _⊗_ e _⊕_) ((v ⊗ y) ⊕ e) ys
            ≡⟨ lemma-op (u ⊗ y) ((v ⊗ y) ⊕ e) ys ⟩
              foldl (gen-op _⊗_ e _⊕_) ((u ⊗ y) ⊕ ((v ⊗ y) ⊕ e)) ys
            ≡⟨ cong (λ z → foldl (gen-op _⊗_ e _⊕_) z ys) (sym (assoc-⊕ (u ⊗ y) (v ⊗ y) e)) ⟩
              foldl (gen-op _⊗_ e _⊕_) (((u ⊗ y) ⊕ (v ⊗ y)) ⊕ e) ys
            ≡⟨ cong (λ z → foldl (gen-op _⊗_ e _⊕_) (z ⊕ e) ys) (sym (distrib u v y)) ⟩
              foldl (gen-op _⊗_ e _⊕_) (((u ⊕ v) ⊗ y) ⊕ e) ys
            ≡⟨⟩
              foldl (gen-op _⊗_ e _⊕_) (u ⊕ v) (y ∷ ys)
            ∎
 
-----
  horner-rule-ext : {A : Set} → (_⊗_ : A → A → A) → (e : A) → (_⊕_ : A → A → A) → (e2 : A) 
                → (IsMonoid e _⊗_) → (IsMonoid e2 _⊕_) 
                → (distrib : ∀ a b c → (a ⊕ b) ⊗ c ≡ (a ⊗ c) ⊕ (b ⊗ c) )
                → (λ var → foldl _⊕_ e2 ( map (foldl _⊗_ e) (tails var)) ) ≡ foldl (gen-op _⊗_ e _⊕_) e 
  horner-rule-ext _⊗_ e _⊕_ e2 p1 p2 distrib = extensionality (λ var → horner-rule _⊗_ e _⊕_ e2 p1 p2 distrib var)
  mss-op-= : mss-op ≡ gen-op _+_ 0 _⊔_
  mss-op-= = extensionality lemma1
    where
      lemma1 : (x : ℕ) → mss-op x ≡ (gen-op _+_ 0 _⊔_) x
      lemma1 x = extensionality lemma2
        where 
          lemma2 : (y : ℕ) → mss-op x y ≡ (gen-op _+_ 0 _⊔_) x y
          lemma2 y = refl
  add-⊔-distrib : (a b c : ℕ) → (a ⊔ b) + c ≡ (a + c) ⊔ (b + c)
  add-⊔-distrib a b c = +-distribʳ-⊔ c a b

  map-distrub : {A B C : Set} → (f : B → C) → (g : A → B) → map f ∘ map g ≡ map (f ∘ g)
  map-distrub {A} {B} {C} f g = extensionality lemma
    where
      lemma : (xs : List A) → (map f ∘ map g) xs ≡ map (f ∘ g) xs
      lemma [] = refl
      lemma (x ∷ xs) rewrite lemma xs = refl

  map-promotion : {A B : Set} → (f : A → B) → map f ∘ concat ≡ concat ∘ map (map f)
  map-promotion {A} {B} f = extensionality lemma
    where
      lemma : (xxs : List (List A)) → (map f ∘ concat) xxs ≡ (concat ∘ map (map f)) xxs
      lemma [] = refl
      lemma (xs ∷ xxs) =
        begin
          map f (concat (xs ∷ xxs) )
        ≡⟨⟩
          map f (xs ++ concat xxs)
        ≡⟨ ++map f xs (concat xxs) ⟩
          map f xs ++ map f (concat xxs)
        ≡⟨ cong (map f xs ++_) (lemma xxs) ⟩
          map f xs ++ (concat (map (map f) xxs))
        ≡⟨⟩
          concat ( (map f xs) ∷ map (map f) xxs) 
        ≡⟨⟩
          concat (map (map f) (xs ∷ xxs))
        ∎
---------
  reduce-promotion : {A : Set} → (_⊕_ : A → A → A) → (e : A) → (IsMonoid e _⊕_)
           → foldl _⊕_ e ∘ concat ≡ foldl _⊕_ e ∘ map (foldl _⊕_ e) 
  reduce-promotion {A} _⊕_ e p = extensionality lemma
    where lemma : (xxs : List (List A)) → foldl _⊕_ e (concat xxs) ≡ foldl _⊕_ e (map (foldl _⊕_ e) xxs)
          lemma [] = refl
          lemma (xs ∷ xxs) =
            begin
              foldl _⊕_ e (concat (xs ∷ xxs))
            ≡⟨⟩
              foldl _⊕_ e (xs ++ concat xxs)
            ≡⟨ ++fold e _⊕_ xs (concat xxs) ⟩
              foldl _⊕_ (foldl _⊕_ e xs) (concat xxs) 
            ≡⟨ monoid-shift (foldl _⊕_ e xs) (concat xxs) _⊕_ e p ⟩
              (foldl _⊕_ e xs) ⊕ (foldl _⊕_ e (concat xxs) )
            ≡⟨ cong ((foldl _⊕_ e xs) ⊕_) (lemma xxs) ⟩
              (foldl _⊕_ e xs) ⊕ (foldl _⊕_ e (map (foldl _⊕_ e) xxs))
            ≡⟨ sym (monoid-shift (foldl _⊕_ e xs) (map (foldl _⊕_ e ) xxs) _⊕_ e p ) ⟩
              foldl _⊕_ (foldl _⊕_ e xs) (map (foldl _⊕_ e) xxs)
            ≡⟨ sym (cong (λ var → foldl _⊕_ var (map (foldl _⊕_ e) xxs) ) (identityl (foldl _⊕_ e xs))) ⟩
              foldl _⊕_ e ( (foldl _⊕_ e xs) ∷ map (foldl _⊕_ e) xxs)
            ≡⟨⟩
              foldl _⊕_ e (map (foldl _⊕_ e) (xs ∷ xxs))
            ∎
              where
                open IsMonoid p renaming (identityˡ to identityl)

  -----------
  derivation : mss ≡ mss-fast
  derivation =
    begin
      mss
    ≡⟨⟩
      maximum ∘ map sum ∘ segs
    ≡⟨⟩
      maximum ∘ map sum ∘ concat ∘ map tails ∘ inits
    ≡⟨ cong (λ var → maximum ∘ var ∘ map tails ∘ inits ) (map-promotion sum) ⟩
      maximum ∘ concat ∘ map (map sum) ∘ map tails ∘ inits
    ≡⟨ cong (_∘ map (map sum) ∘ map tails ∘ inits ) (reduce-promotion _⊔_ 0 ℕ-⊔-is-monoid) ⟩
      maximum ∘ map maximum ∘ map (map sum) ∘ map tails ∘ inits
    ≡⟨ cong (λ var → maximum ∘ map maximum ∘ var ∘ inits ) (map-distrub (map sum) tails) ⟩
      maximum ∘ map maximum ∘ map (map sum ∘ tails) ∘ inits
    ≡⟨ cong (λ var → maximum ∘ var ∘ inits) (map-distrub maximum (map sum ∘ tails)) ⟩
      maximum ∘ map (maximum ∘ map sum ∘ tails) ∘ inits
    ≡⟨ cong (λ var → (maximum ∘ map var ∘ inits)) (horner-rule-ext _+_ 0 _⊔_ 0 ℕ-add-is-monoid ℕ-⊔-is-monoid add-⊔-distrib) ⟩
      maximum ∘ (map (foldl (gen-op _+_ 0 _⊔_) 0 ) ∘ inits)
    ≡⟨ cong (λ var → ( maximum ∘ (map (foldl var 0 ) ∘ inits) ) ) (sym mss-op-=) ⟩
      maximum ∘ ( map (foldl mss-op 0) ∘ inits )
    ≡⟨ cong (maximum ∘_) (fold-scan 0 mss-op) ⟩
      maximum ∘ scanl mss-op 0
    ≡⟨⟩
      mss-fast
    ∎

  -- note: it is possible to avoid extensionality and instead prove the following
  --
  -- derivation-alt : ∀ xs → mss xs ≡ mss-fast xs
  -- derivation-alt = ?
  --
  -- In fact, this version should be slightly easier to write, since it (generally)
  -- produces better error messages. If you want to follow this route, go ahead and
  -- prove the above 'derivation-alt', and uncomment the following:
  --
  -- derivation : mss ≡ mss-fast
  -- derivation = extensionality derivation-alt

  -- bonus(hard): try to prove the same result for integers (instead of naturals)
  --
  -- Our effort is futile if every element in the list is non-negative, because
  -- the MSS will always be the sum of all elements. However, it is not trivial
  -- to prove the same result for integers, because 'maximum []' is usually defined
  -- as negative infinity (-∞), which is not an integer.
  --
  -- However, we can extend integers (ℤ) to ℤ∞ as follows:
  --

  open import Data.Integer.Base using (ℤ; 0ℤ; 1ℤ)
  open import Data.Integer.Base renaming (_+_ to int_add; _⊔_ to int_max)
  open import Data.Integer.Properties renaming 
    (+-identityʳ to int+-identityr; +-identityˡ to int+-identityl; +-assoc to int+-assoc; ⊔-assoc to int⊔-assoc )

  data ℤ∞ : Set where
    fin : ℤ → ℤ∞
    -∞ : ℤ∞

  add : ℤ∞ → ℤ∞ → ℤ∞
  add -∞ _ = -∞
  add _ -∞ = -∞
  add (fin a) (fin b) = fin (int_add a b)
  add-assoc : (a b c : ℤ∞) → add (add a b) c ≡ add a (add b c)
  add-assoc -∞ b c = refl
  add-assoc (fin a) -∞ c = refl
  add-assoc (fin a) (fin b) -∞ = refl
  add-assoc (fin a) (fin b) (fin c) = cong fin (int+-assoc a b c)
  add-id-l : (a : ℤ∞) → add (fin 0ℤ) a ≡ a
  add-id-l -∞ = refl
  add-id-l (fin a) = cong fin (int+-identityl a)
  add-id-r : (a : ℤ∞) → add a (fin 0ℤ) ≡ a
  add-id-r -∞ = refl
  add-id-r (fin a) rewrite int+-identityr a = refl

  add-is-monoid : IsMonoid (fin 0ℤ) add
  add-is-monoid = record
    { is-semigroup = record { assoc = add-assoc };
      identityˡ = add-id-l ; identityʳ = add-id-r
    }

  max : ℤ∞ → ℤ∞ → ℤ∞
  max -∞ b = b
  max a -∞ = a
  max (fin a) (fin b) = fin (int_max a b)
  max-assoc : (a b c : ℤ∞) → max (max a b) c ≡ max a (max b c)
  max-assoc -∞ b c = refl 
  max-assoc (fin a) -∞ c = refl
  max-assoc (fin a) (fin b) -∞ = refl
  max-assoc (fin a) (fin b) (fin c) = cong fin (int⊔-assoc a b c)
  max-id-l : (x : ℤ∞) → max -∞ x ≡ x
  max-id-l (fin x) = refl
  max-id-l -∞      = refl
  max-id-r : (x : ℤ∞) → max x -∞ ≡ x
  max-id-r (fin x) = refl
  max-id-r -∞      = refl

  max-is-monoid : IsMonoid -∞ max
  max-is-monoid = record {
      is-semigroup = record { assoc = max-assoc }; identityˡ = max-id-l; identityʳ = max-id-r
    }


  postulate
    add-max-distrib : (a b c : ℤ∞) → add (max a b) c ≡ max (add a c) (add b c)


  sum-int : List ℤ∞ → ℤ∞
  sum-int = foldl add (fin 0ℤ)

  maximum-int : List ℤ∞ → ℤ∞
  maximum-int = foldl max -∞

  mss-int : List ℤ∞ → ℤ∞
  mss-int = maximum-int ∘ map sum-int ∘ segs
 
  mss-int-op : ℤ∞ → ℤ∞ → ℤ∞ 
  mss-int-op x y = max (add x y) (fin 0ℤ)
  -- mss-int-op-= : mss-int-op ≡ gen-op add (fin 0ℤ) max
  -- mss-int-op-= = extensionality lemma1
  --   where lemma1 : (x : ℤ∞) → mss-int-op x ≡ (gen-op add (fin 0ℤ) max) x
  --         lemma1 x = extensionality lemma2
  --           where lemma2 : (y : ℤ∞) → mss-int-op x y ≡ (gen-op add (fin 0ℤ) max) x y
  --                 lemma2 y = refl

  mss-fast-int : List ℤ∞ → ℤ∞
  mss-fast-int = maximum-int ∘ scanl mss-int-op (fin 0ℤ)

  derivation-int : mss-int ≡ mss-fast-int
  derivation-int =
    begin
      mss-int
    ≡⟨⟩
      maximum-int ∘ map sum-int ∘ segs
    ≡⟨⟩
      maximum-int ∘ map sum-int ∘ concat ∘ map tails ∘ inits
    ≡⟨ cong (λ var → maximum-int ∘ var ∘ map tails ∘ inits) (map-promotion sum-int) ⟩
      maximum-int ∘ concat ∘ map (map sum-int) ∘ map tails ∘ inits
    ≡⟨ cong (_∘ map (map sum-int) ∘ map tails ∘ inits) (reduce-promotion max -∞ max-is-monoid) ⟩
      maximum-int ∘ map (maximum-int) ∘ map (map sum-int) ∘ map tails ∘ inits
    ≡⟨ cong (λ var → maximum-int ∘ map (maximum-int) ∘ var ∘ inits) (map-distrub (map sum-int) tails) ⟩
      maximum-int ∘ map (maximum-int) ∘ map (map sum-int ∘ tails) ∘ inits
    ≡⟨ cong (λ var → maximum-int ∘ var ∘ inits) (map-distrub maximum-int (map sum-int ∘ tails)) ⟩
      maximum-int ∘ map (maximum-int ∘ map sum-int ∘ tails) ∘ inits
    ≡⟨ cong (λ var → maximum-int ∘ map var ∘ inits) (horner-rule-ext add (fin 0ℤ) max -∞ add-is-monoid max-is-monoid add-max-distrib) ⟩
      maximum-int ∘ map (foldl (gen-op add (fin 0ℤ) max) (fin 0ℤ)) ∘ inits
    ≡⟨ cong (maximum-int ∘_) (fold-scan (fin 0ℤ) (gen-op add (fin 0ℤ) max)) ⟩
      mss-fast-int
    ∎
  --
  -- and replace 0 with -∞ in 'maximum'. Now you should be able to prove the result.
  -- You will need to define operations like '_+_' and '_⊔_', and prove lemmas like
  -- '+-distribʳ-⊔' all by yourself, which, if you ask me, is not the most pleasant
  -- way to spend your afternoon.

  -- bonus(hard): try to prove the correctness of 'mss' and 'mss-fast'
  --
  -- We have this "segment" relation (you may come up with better definitions):
  --
  --   open import Data.List using (take; drop)
  --   infix 4 _⊆_
  --   data _⊆_ {A : Set} (xs : List A) (ys : List A) : Set where
  --     segment : ∀ m n → take m (drop n ys) ≡ xs → xs ⊆ ys
  --
  -- We also have the "less than" relation:
  --
  --   open import Data.Nat using (_≤_)
  --
  -- which is defined as follows in the standard library:
  --
  --   infix 4 _≤_
  --   data _≤_ : ℕ → ℕ → Set where
  --     z≤n : ∀ {n}                 → zero  ≤ n
  --     s≤s : ∀ {m n} (m≤n : m ≤ n) → suc m ≤ suc n
  --
  -- 'mss' is proven to be correct if we can prove the following two theorems:
  --
  --   open import Data.Product using (_×_; ∃-syntax)
  --   mss-is-max : ∀ {xs ys} → ys ⊆ xs → sum ys ≤ mss xs
  --   mss-exists : ∀ {xs} → ∃[ ys ] ys ⊆ xs × sum ys ≡ mss xs
