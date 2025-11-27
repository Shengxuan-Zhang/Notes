module HW13 where

-- Problem #1: Write a Haskell program to solve the maximum segment
--   sum problem, following the three steps in the slides.

subseq :: [a] -> [ [a] ]
subseq [] = [ [] ]
subseq (x:xs) = subseq xs ++  prefix (x:xs)
   
prefix :: [a] -> [ [a] ]
prefix [] = [ [] ]
prefix (x:xs) = [x] : ( map (x:) $ prefix xs )
       
mss :: [Integer] -> Integer
mss xs = foldr1 max $ map sum $ subseq xs

-- End Problem #1

-- Problem #2: Write a Haskell program to solve the maximum segment
--   sum problem, using the smart algorithm in the slides.

mss' :: [Integer] -> Integer
mss' xs = snd $ foldl f (0,0) xs where f = \(s,ms) x-> let s' = if s+x > 0 then s+x else 0 
                                                           ms' = max s' ms in (s',ms')


-- End Problem #2
