module HW6 where

import Data.Char (chr)
-- Ch.08

-- Problem #1: desugar list comprehension using map and filter
theExpr :: (a -> Bool) -> (a -> b) -> [a] -> [b]
-- theExpr p f xs = [f x | x <- xs, p x]
theExpr p f xs = map f $ filter p xs
-- End Problem #1

-- Problem #2: redefine map/filter with foldr
filter_ :: (a -> Bool) -> [a] -> [a]
filter_ p = foldr (\x y -> if p x then x:y else y) []

map_ :: (a -> b) -> [a] -> [b]
map_ f = foldr (\x y -> f x : y) []
-- End Problem #2

-- Problem #3: error checking for binary string transmitter
type Bit = Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2 * y) 0

decode :: [Bit] -> String
-- modify this line to add error checking
-- decode = map (chr . bin2int) . chop
decode = map (chr . bin2int . (take 8) . check) . chop
    where check bits
            | xorsum == 0 = bits
            | otherwise   = error "parity check failed"
            where xorsum = sum bits `mod` 2

chop :: [Bit] -> [[Bit]]
chop [] = [ ] -- hint: not 'chop8' any more
chop bits
    | length bits < 9 = error "incomplete byte"
    | otherwise       = take 9 bits : chop (drop 9 bits)
-- you can check: decode [1,0,0,0,0,1,1,0,1] == "a"

-- End Problem #3
