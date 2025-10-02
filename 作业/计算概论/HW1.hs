-- Problem 1.1:
product' :: (Num a) => [a] -> a
product' = foldl (*) 1

-- Problem 1.2:
length' :: (Num b)=> [a] -> b
length' = foldr (\x acc -> acc+1) 0

-- Problem 1.3:
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = (qsort [t| t<- xs,t>x]) ++ [x] ++ (qsort [t| t<-xs, t<=x])
