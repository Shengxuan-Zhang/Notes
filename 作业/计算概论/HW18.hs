module HW18 where

-- Ch24: BMF2-2
maxarr :: Ord a => [a] -> [a] -> [a]
maxarr xs ys = if lx < ly then ys else if lx > ly then xs else maxdict xs ys
    where lx = length xs
          ly = length ys
          maxdict :: Ord a => [a] -> [a] -> [a]
          maxdict [] xs = xs
          maxdict xs [] = xs
          maxdict u@(x:xs) v@(y:ys) = if x < y then v else if x > y then u else x : maxdict xs ys

lsp :: Ord a => (a -> Bool) -> [a] -> [a]
lsp p xs = snd $ foldr (\x (ys,zs) -> if p x then (x:ys, maxarr (x:ys) zs) else ([],zs)) ([],[]) xs

-- Ch24: BMF2-3
maxInt :: Int
maxInt = 1000000000
minInt :: Int
minInt = -maxInt
minimax :: [[Int]] -> Int
minimax = foldl (\a xs -> g (a,minInt) xs) maxInt 
    where g :: (Int,Int) -> [Int] -> Int
          g (a,b) [] = if a < b then a else b
          g (a,b) (x:xs) = if x >= a then a else g (a,if b > x then b else x) xs

-- Ch25: BMF3-2
tailsums :: (Num a) => [a] -> [a]
tailsums = fst . foldr (\x (xs,s) -> ((x+s):xs,x+s)) ([0],0)
