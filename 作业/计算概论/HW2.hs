module HW2 where

----
and1 :: Bool -> Bool -> Bool
and1 True True = True
and1 _ _ = False

and2 :: Bool -> Bool -> Bool
and2 True b = b
and2 _ _ = False

and3 :: Bool -> Bool -> Bool
and3 a b = if a then b else False

and4 :: Bool -> Bool -> Bool
and4 a b | a == True = b
         | otherwise = False
----

div1 :: Integer -> Integer -> Integer
div1 _ 0 = error "Division by zero"
div1 a b | b < 0 = div1 (-a) (-b)
         | a < 0 = if (-a) < b then -1 else -1 + div1 (a+b) b
         | a > 0 = if a < b then 0 else 1 + div1 (a-b) b
         | a == 0 = 0

----
factGuard :: Integer -> Integer
factGuard n | n == 0 = 1
            | n > 0 = n * factGuard (n-1)

factBranch :: Integer -> Integer
factBranch n = if n == 0 then 1 else n * factBranch (n-1)

