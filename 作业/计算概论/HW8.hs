module HW8 where

-- module Main where

import Data.List
-- Ch.10

-- 为缩减计算空间起见，我们不允许任何中间结果超出 2^31。
-- 这意味着大家可以提前对搜索进行剪枝：如果一个中间结果超过 2^31，那么这个分支就可以被剪掉。

data Op
  = Add
  | Sub
  | Mul
  | Div
  | Pow -- 添加的指数运算
  deriving Eq

data Expr
  = Val Int
  | App Op Expr Expr
  deriving Eq

-- 一些辅助函数
apply :: Op -> Int -> Int -> Int
apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = x `div` y
apply Pow x y = x ^ y

maximal :: Int
maximal = 2 ^ 31 - 1

valid :: Op -> Int -> Int -> Bool
valid Add x y = x + y <= maximal && x <= y
valid Sub x y = x > y
valid Mul x y = x * y <= maximal && y /= 1 && x /= 1 && x <= y
valid Div x y = x `mod` y == 0 && y /= 1
valid Pow x y = y /= 1 && x /= 1 && y <= 31 && (x==2 || y<= 20) && y <= logInt x maximal
    where
        logInt a b 
            | b < a = 0
            | otherwise = 1 + logInt a (b `div` a)

eval :: Expr -> [Int]
eval (Val n) = [n | n > 0]
eval (App o l r) = [apply o x y | x <- eval l, y <- eval r, valid o x y]

subs :: [a] -> [[a]]
subs [] = [[]]
subs (x:xs) = subs xs ++ map (x:) (subs xs)

interleave :: a -> [a] -> [[a]]
interleave x [] = [[x]]
interleave x (y:ys) = (x:y:ys) : map (y:) (interleave x ys)

perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:xs) = concatMap (interleave x) (perms xs)

choices :: [a] -> [[a]]
choices = concatMap perms . subs

split :: [a] -> [([a], [a])]
split [] = []
split [_] = []
split (x:xs) = ([x], xs) : [(x:ls, rs) | (ls, rs) <- split xs]

-- 你需要完成下面的 solutions 函数
-- 你可能还需要自定义一些辅助函数或类型
-- 注意你需要实现3个功能：
-- 1. 添加Pow相关功能
-- 2. 输出相对最精确的solution set，如果没有结果完全相同solution set
-- 3. 为solutions制定你喜欢的排序方式
-- 示例如下：
-- solutions [1, 3, 7] 23 应当返回两类解：值为22，24的表达式
-- solutions [3, 7] 343 应当返回 7^3
solutions :: [Int] -> Int -> [Expr]
solutions ns target = sort $ if null sols then approx else sols
    where
        vals = values ns
        sols = [ expr | (expr, val) <- vals, val == target ]
        minDiff = minVal [ abs $ val - target | (expr, val) <- vals]
        approx = [ expr | (expr , val) <- vals, abs (val-target) == minDiff ]
        minVal = foldr min maximal

values :: [ Int ] -> [ (Expr, Int) ]
values ns = [ ( expr, val) | seq <- choices ns, ( expr , val ) <- results seq ]

results :: [ Int ] -> [ (Expr, Int) ]
results [] = []
results [n] = [(Val n,n) | n > 0]
results ns = [ (App op lExpr rExpr, apply op lVal rVal) | (ls,rs) <- split ns, (lExpr,lVal) <- results ls, (rExpr,rVal) <- results rs, op <- [Add,Sub,Mul,Div,Pow], valid op lVal rVal]

weight :: Expr -> (Int,Int)
weight (Val n) = (1,0)
weight (App Add l r) = weight l `add` weight r `add` (1,1)
weight (App Sub l r) = weight l `add` weight r `add` (1,5)
weight (App Mul l r) = weight l `add` weight r `add` (1,1)
weight (App Div l r) = weight l `add` weight r `add` (1,10)
weight (App Pow l r) = weight l `add` weight r `add` (1,10)

add :: (Int,Int) -> (Int,Int) -> (Int,Int)
add (a,b) (c,d) = (a+c, b+d)

instance Ord Expr where
    compare a b = compare (weight a) (weight b)
-- 下面是我们为 Expr 和 Op 提供的一个 Show 的实现
-- 这并不是本次作业必需的，但是在调试过程中可能会让表达式更易读
-- 这个实现使用了 showsPrec，有关它的细节你可以参考相关文档：
-- https://hackage.haskell.org/package/base-4.15.0.0/docs/Text-Show.html#t:Show
-- 以及 Haskell 2010 Report 的 11.4 节：
-- https://www.haskell.org/onlinereport/haskell2010/haskellch11.html

instance Show Op where
  show Add = "+"
  show Sub = "-"
  show Mul = "*"
  show Div = "/"
  show Pow = "^"

instance Show Expr where
  showsPrec _ (Val n) = shows n
  showsPrec p (App op x y)
    = showParen (p > q)
    $ showsPrec q x . showChar ' ' . shows op
    . showChar ' ' . showsPrec (succ q) y
    where q = case op of
            Add -> 6; Sub -> 6
            Mul -> 7; Div -> 7
            Pow -> 8

main :: IO ()
main = do
    let seq = [1,3,7,10,25,50]
    let target = 765
    -- let seq = [1,3,7]
    -- let target = 23
    let ans = solutions seq target
    let num = length ans
    
    if eval (head ans)== [target]
       then putStrLn $ "Found " ++ show num ++ " exact solution(s) for " ++ show target ++ ":"
       else putStrLn $ "No exact solution for " ++ show target ++ ", found " ++ show num ++ " closest solution(s):"
    print $ map show ans
