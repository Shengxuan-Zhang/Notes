module HW11 where
import GHC.Base
import Data.Char

-- Problem #1: Extend the expression parser
newtype Parser a = P { parse :: String -> [(a,String)] }
instance Functor Parser where
  fmap f p = P $ \inp -> case parse p inp of
                           [] -> []
                           [(v,out)] -> [(f v, out)]
instance Applicative Parser where
    pure v = P $ \inp -> [(v,inp)]
    pf <*> px = P $ \inp -> case parse pf inp of
                                [] -> []
                                [(f,out)] -> parse (fmap f px) out
instance Monad Parser where
  return = pure
  p >>= f = P $ \inp -> case parse p inp of
                          [] -> []
                          [(v,out)] -> parse (f v) out
instance Alternative Parser where
  empty = P $ \_ -> []
  p <|> q = P $ \inp -> case parse p inp of
                          [] -> parse q inp
                          [(v,out)] -> [(v,out)]
  many v  = some v <|> pure []
  some v  = pure (:) <*> v <*> many v

-- some functions that might be useful
item :: Parser Char
item = P $ \inp -> case inp of
                     [] -> []
                     (x:xs) -> [(x,xs)]
sat  :: (Char -> Bool) -> Parser Char 
sat p = do x <- item 
           if p x then return x else empty

char  :: Char -> Parser Char 
char x = sat (x ==)

string :: String -> Parser String 
string [] = return [] 
string (x:xs) = do  char x 
                    string xs 
                    return (x:xs)

space :: Parser String
space = many (sat isSpace)

nat :: Parser Int
nat = do xs <- some (sat isDigit)
         return (read xs)

token :: Parser a -> Parser a 
token p = do  space 
              v <- p 
              space 
              return v

symbol :: String -> Parser String 
symbol xs = token $ string xs

natural :: Parser Int
natural = token nat

integer :: Parser Int
integer = token $ do { char '-' ; n <- nat ; return $ -n ; } <|> nat

addNeg :: Parser Int
addNeg = P $ \program -> parse expr $ "-" ++ program

-- The following is the parser for the expression that you need to extend
expr :: Parser Int 
expr = do { l <- termdiv ; 
            do {symbol "+"; r <- expr; return $ l+r;} <|>
            do {symbol "-"; r <- addNeg; return $ l+r;} <|>
            return l;
          }

termdiv :: Parser Int 
termdiv = do { l <- term; 
            do {symbol "/"; r <- term; return $ l `div` r;} <|>
            return l;
          }
term :: Parser Int
term = do { l <- factor; 
            do {symbol "*"; r <- term; return $ l*r;} <|>
            return l;
          }

factor :: Parser Int 
factor  = do  symbol "(" 
              e <- expr 
              symbol ")" 
              return e 
           <|> integer

eval :: String -> Int
eval = fst . head . parse expr

-- End Problem #1

-- Problem #2: fibonacci using zip/tail/list-comprehension
fibpair :: [(Integer,Integer)]
fibpair = (0,1) : [ (b,a+b) | (a,b) <- fibpair ]

fibs :: [Integer]
fibs = fst <$> fibpair

-- or alternatively
-- fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- End Problem #2

-- Problem #3: Newton's square root
eps = 0.00001
sqroot :: Double -> Double
sqroot n = let arr = iterate (\x -> (x+n/x)/2) 1.0 in fst . head $ dropUntil (\(x,y) -> abs (x-y) < eps) $ zip arr $ tail arr

dropUntil _ []     = []
dropUntil p (x:xs)
    | p x            = xs
    | otherwise      = dropUntil p xs
-- End Problem #3
