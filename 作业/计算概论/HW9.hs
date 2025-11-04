module HW9 where

readInt :: IO Int
readInt = do
    str <- getLine
    let n = read str :: Int
    return n

sumUp :: Int -> IO Int
sumUp 0 = return 0
sumUp n = do
    val <- readInt
    pure ( val+ ) <*> sumUp (n-1)

adder :: IO ()
adder = do
    putStr "How many numbers? "
    n <- readInt
    sum <- sumUp n
    putStrLn ("The total is " ++ show sum)

-- 第二题无需提交代码
