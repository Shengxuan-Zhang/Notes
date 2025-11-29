module HW15 where

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
open import Data.List using (List; []; _∷_)
open import Data.Vec using (Vec; []; _∷_)

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; sym; trans; cong; cong-app)
open Eq.≡-Reasoning 
-- Chap. 20

-- problem 20.1
_by_matrix : (n m : ℕ) → Set
n by m matrix = Vec ( Vec ℕ m ) n

-- problem 20.2
-- 20.2(a) zero matrix: all zeros
zero-vec : (n : ℕ) → Vec ℕ n
zero-vec 0 = []
zero-vec (suc n) = 0 ∷ zero-vec n

zero-matrix : (n m : ℕ) → n by m matrix
zero-matrix 0 m = []
zero-matrix (suc n) m = zero-vec m ∷ zero-matrix n m

-- 20.2(b) matrix indexing
module Problem-20-2-b where
  _<_ : (n m : ℕ) → Bool
  zero  < zero  = false
  zero  < suc _ = true
  suc _ < zero  = false
  suc x < suc y = x < y

  sub1 : (m n : ℕ) → (suc m) < (suc n) ≡ true → m < n ≡ true
  sub1 m n p rewrite p = refl

  vec-elt : {n : ℕ} → Vec ℕ n → (i : ℕ) → i < n ≡ true → ℕ
  vec-elt {0} [] 0 ()
  vec-elt {0} [] (suc i) ()
  vec-elt {suc n} (x ∷ xs) 0 p1 = x
  vec-elt {suc n} (x ∷ xs) (suc i) p1 = vec-elt {n} xs i (sub1 i n p1)

  matrix-elt : {n m : ℕ}
    → n by m matrix
    → (i j : ℕ)
    → i < n ≡ true
    → j < m ≡ true
    → ℕ
  matrix-elt {0} {m} [] 0 j () p2
  matrix-elt {0} {m} [] (suc i) j () p2
  matrix-elt {n} {m} (v ∷ mat1) 0 j p1 p2 = vec-elt v j p2
  matrix-elt {suc n} {m} (v ∷ mat1) (suc i) j p1 p2 = matrix-elt mat1 i j (sub1 i n p1) p2

-- 20.2(c): diagonal matrix, with the same element along the main diagonal
gen-zero : (n : ℕ) → Vec ℕ n 
gen-zero 0 = []
gen-zero (suc n) = 0 ∷ gen-zero n

gen-row : (n d m : ℕ) → Vec ℕ n 
gen-row 0 _ _ = []
gen-row (suc n) d 0 = gen-zero (suc n)
gen-row 1 d 1 = d ∷ []
gen-row (suc n) d (suc m) = 0 ∷ gen-row n d m

gen-diag : (n d m : ℕ) → m by n matrix
gen-diag n d 0 = []
gen-diag n d (suc m) = gen-row n d (suc m) ∷ gen-diag n d m

diagonal-matrix : (n : ℕ) → (d : ℕ) → n by n matrix
diagonal-matrix n d = gen-diag n d n

identity-matrix : (n : ℕ) → n by n matrix
identity-matrix n = diagonal-matrix n 1

-- 20.2(d): transpose
concatvec : {n m : ℕ} → Vec ℕ m → m by n matrix → m by (suc n) matrix
concatvec [] [] = []
concatvec (x ∷ xs) (m ∷ mat) = (x ∷ m) ∷ concatvec xs mat

gen-empty : (m : ℕ) → m by 0 matrix
gen-empty 0 = []
gen-empty (suc m) = [] ∷ gen-empty m

transpose : {n m : ℕ} → n by m matrix → m by n matrix
transpose {n} {m} [] = gen-empty m
transpose (vec ∷ mat) = concatvec vec (transpose mat)

-- 20.2(e): dot product
_∙_ : {n : ℕ} → (x y : Vec ℕ n) → ℕ
[] ∙ [] = 0
(x ∷ xs) ∙ (y ∷ ys) = x * y + (xs ∙ ys)

-- Chap. 21
-- Bonus: rewrite rules
-- 如果 _+_ 是在第二个参数上递归定义的，那么下面这两个性质就是自动得到的了。
-- 因此，也常常说下面两个性质是 _+_ 在第二个参数上的计算规则。
--
-- 有一种办法可以在 Agda 中根据已经证明的等式添加新的计算规则：使用重写规则。
-- 在证明下面两个定理后，试试加上如下规则：
--
--     {-# REWRITE +-identityʳ +-suc #-}
--
-- 然后重新尝试证明加法交换律：
--
--     +-comm : (m n : ℕ) → m + n ≡ n + m
--     +-comm zero    n = ?
--     +-comm (suc m) n = ?
--
-- 注意把光标放进两个 goal 中分别检查目标的类型，并和不用 REWRITE 之前的比较。
-- 使用 REWRITE 能让我们的证明简化，那么它有什么缺点呢？
--
-- 参看官方的文档：
-- https://agda.readthedocs.io/en/v2.6.2.2.20221106/language/rewriting.html

+-identityʳ : (m : ℕ) → m + 0 ≡ m
+-identityʳ 0 = 
  begin
    0 + 0
  ≡⟨⟩
    0
  ∎
+-identityʳ (suc m) = 
  begin
    (suc m) + 0
  ≡⟨⟩
    suc (m + 0)
  ≡⟨ cong suc (+-identityʳ m) ⟩
    suc m
  ∎

+-suc : (m n : ℕ) → m + suc n ≡ suc (m + n)
+-suc 0 n = 
  begin
    0 + suc n
  ≡⟨⟩
    suc n
  ≡⟨⟩
    suc (0 + n)
  ∎
+-suc (suc m) n = 
  begin 
    (suc m) + suc n 
  ≡⟨⟩
    suc (m + suc n)
  ≡⟨ cong suc (+-suc m n) ⟩
    suc (suc (m + n) )
  ∎
