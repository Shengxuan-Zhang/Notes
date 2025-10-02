module HW4 where

-- Problem #1: What are the types of the following values?
val1 :: String
val1 = ['a', 'b', 'c']

val2 :: (Char, Char, Char)
val2 = ('a', 'b', 'c')

val3 :: [(Bool, Char)]
val3 = [(False, '0'), (True, '1')]

val4 :: ([Bool], [Char])
val4 = ([False, True], ['0', '1'])

val5 :: [ [a] -> [a] ]
val5 = [tail, init, reverse]
-- End Problem #1

-- Problem #2: What are the types of the following functions?
second :: [a] -> a
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x, y) = (y, x)

pair :: a -> b -> (b,a)
pair x y = (x, y)

double :: Num a => a -> a
double x = x * 2

palindrome :: [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)
-- End Problem #2

-- Problem #3: Int/Integer，show/read
-- 阅读教科书，用例子（在ghci上运行）展示 Int 与 Integer 的区别以及 show 和 read 的用法。 
-- 你无需提交任何代码，只需在自行在ghci上运行相关的表达式即可。
-- End Problem #3

-- Problem #4: Integral/Fractional
-- 阅读教科书以及Prelude模块的相关文档，理解 Integral 和 Fractional
-- 两个 Type Class 中定义的函数和运算符，用例子（在 GHCi 上运行）展示每一个函数/运算符的用法。
-- 你无需提交任何代码，只需在自行在ghci上运行相关的表达式即可。
-- End Problem #4
