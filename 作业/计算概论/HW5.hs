module HW5 where

import Data.Char (chr, isLower, ord)

-- **=========[ Ch.05 ]=========**

-- Problem #1: define safetail
-- Part #1.1: use a conditional expression
safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs
-- End Part #1.1

-- Part #1.2: use guarded equations
safetail2 :: [a] -> [a]
safetail2 xs 
  | null xs   = []
  | otherwise = tail xs
-- End Part #1.2

-- Part #1.3: use pattern matching
safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 (_:xs) = xs
-- End Part #1.3
-- End Problem #1

-- Problem #2: Luhn algorithm
luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = ( sum $ map (`mod` 9) [a, b*2, c, d*2] ) `mod` 10 == 0
-- End Problem #2

-- **=========[ Ch.06 ]=========**

-- Problem #1: Caesar crack
encode :: Int -> String -> String 
encode n xs = [ shift n x | x <- xs ] 

shift :: Int -> Char -> Char 
shift n c | isLower c  =  int2let $ mod (let2int c + n) 26
          | otherwise  =  c 

let2int :: Char -> Int 
let2int c = ord c - ord 'a' 
int2let :: Int -> Char 
int2let n = chr $ ord 'a' + n
        
table :: [Float] 
table = [ 8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0, 
          0.2, 0.8, 4.0, 2.4,  6.7, 7.5, 1.9, 0.1, 6.0, 
          6.3, 9.0, 2.8, 1.0,  2.4, 0.2, 2.0, 0.1 ] 

crack :: String -> String
crack xs  =  encode (-factor) xs 
    where   
        factor = position (minimum chitab) chitab      
        chitab = [ chisqr (rotate n table') table | n <- [0..25] ]
        table' = freqs xs
-- you can check : crack "aaaaab" = "eeeeef"

freqs :: String -> [Float]
freqs xs = map intToPercent . count $ filter isLower xs
    where
        count ys = [ length $ filter (== x) ys | x <- ['a' .. 'z'] ]
        intToPercent n = (fromIntegral n / fromIntegral (length xs)) * 100

chisqr :: [Float] -> [Float] -> Float
chisqr os es= sum $ zipWith (\o e -> (o-e)^2/e) os es

position :: Eq a => a -> [a] -> Int
position x xs = head [ i | (x', i) <- zip xs [0..], x == x' ]

rotate :: Int -> [a] -> [a]
rotate n xs = drop n xs ++ take n xs
-- End Problem #1

-- Problem #2: Pythagorean triples
pyths :: Int -> [(Int, Int, Int)]
pyths n = [ (x, y, z) | x <- [1..n], y <- [x..n], z <- [y..n], x^2 + y^2 == z^2 ]
-- End Problem #2

-- Problem #3: perfect integers
perfects :: Int -> [Int]
perfects n = [ x | x <- [ 1..n ], sum (factors x) == x]
    where
        factors x = [ y | y <- [ 1 .. x-1 ], x `mod` y == 0 ]
-- End Problem #3
-- Problem #4: scalar product
scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct = (sum . ) . zipWith (*) 
-- End Problem #4


-- Ch.07
-- Problem #1: define prelude functions using recursions
and_ :: [Bool] -> Bool
and_ xs = if null xs then True else and_ (tail xs) && head xs

concat_ :: [[a]] -> [a]
concat_ xs = if null xs then [] else head xs ++ concat_ (tail xs)

(!!!) :: [a] -> Int -> a
(!!!) xs n = if n==0 then head xs else (!!!) (tail xs) (n-1)

replicate_ :: Int -> a -> [a]
replicate_ n x = if n<= 0 then [] else x : replicate_ (n-1) x

elem_ :: Eq a => a -> [a] -> Bool
elem_ x xs = if null xs then False else if x == head xs then True else elem_ x (tail xs)

-- End Problem #1
-- Problem #2: merge ascending lists
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = if x <= y then x : merge xs (y:ys) else y : merge (x:xs) ys
-- End Problem #2
-- Problem #3: merge sort
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
    where
        (left, right) = splitAt (length xs `div` 2) xs
-- End Problem #3
