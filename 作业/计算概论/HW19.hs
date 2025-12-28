module HW19 where

unfold :: (b -> Bool) -> (b -> a) -> (b -> b) -> b -> [a]
unfold p f g x = if p x then [] else f x : unfold p f g (g x)

-- Ch28: BMF4-1
merge :: (Ord a) => [a] -> [a] -> [a]
merge xs ys = unfold p f g (xs,ys)
    where
        p :: (Ord a) => ([a],[a]) -> Bool
        p ([],[]) = True
        p _ = False
        mergehead :: (Ord a) => [a] -> [a] -> ( a, ([a],[a]) )
        mergehead [] (y : ys) = ( y, ([],ys) )
        mergehead (x : xs) [] = ( x, (xs,[]) )
        mergehead u@(x : xs) v@(y : ys) = if x < y then ( x, (xs,v) ) else ( y, (u,ys) )
        f :: (Ord a) => ([a],[a]) -> a 
        f (xs,ys) = fst (mergehead xs ys)
        g :: (Ord a) => ([a],[a]) -> ([a],[a])
        g (xs,ys) = snd (mergehead xs ys)

-- Ch28: BMF4-2
-- Change the following definition of fib to generate all Fibonacci
-- numbers that are less than 1000,000.
fib :: (Int, Int) -> [Int]
fib = unfold (\(x,y) -> x > 1000000) fst (\(x, y) -> (y, x + y))
