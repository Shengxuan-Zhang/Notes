module HW10 where

import Prelude hiding (Applicative (..), Functor (..), Monad (..))

infixl 4 <$
infixl 1 >>, >>=
infixl 4 <*>

class Functor f where
  fmap        :: (a -> b) -> f a -> f b
  (<$)        :: a -> f b -> f a
  (<$)        =  fmap . const

class Functor f => Applicative f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b

class Applicative m => Monad m where
  return :: a -> m a
  return = pure
  (>>=) :: m a -> (a -> m b) -> m b
  (>>) :: m a -> m b -> m b
  m >> k = m >>= \_ -> k

-- Problem #1: Monad ((->) a)
instance Functor ((->) a) where
  fmap = (.)

instance Applicative ((->) a) where
    pure = const
    (<*>) :: (a -> b -> c) -> (a -> b) -> (a -> c)
    f <*> g = \x -> f x (g x)

instance Monad ((->) r) where
    f >>= g = \x -> g (f x) x
-- End Problem #1

-- Problem #2: Functor, Applicative, Monad
data Expr a
  = Var a
  | Val Int
  | Add (Expr a) (Expr a)
  deriving (Show)

instance Functor Expr where
    fmap :: (a->b) -> Expr a -> Expr b
    fmap f (Var x) = Var (f x)
    fmap _ (Val n) = Val n
    fmap f (Add l r) = Add (fmap f l) (fmap f r)

instance Applicative Expr where
    pure :: a -> Expr a
    pure x = Var x
    (<*>) :: Expr (a->b) -> Expr a -> Expr b
    expf <*> (Add l r) = Add (expf <*> l) (expf <*> r)
    (Add lf rf) <*> expa = Add (lf <*> expa) (rf <*> expa)
    (Var f) <*> (Var x) = Var (f x)
    _ <*> (Val n) = Val n
    (Val n) <*> (Var x) = Val n

instance Monad Expr where
    (>>=) :: Expr a -> (a -> Expr b) -> Expr b
    (Add l r) >>= f = Add (l >>= f) (r >>= f)
    (Val n) >>= f = (Val n)
    (Var n) >>= f = f n

-- Demo of >>= :
expr1 = Add (Var "x") (Add (Val 3) (Var "y"))
func v = case v of
                "x" -> Add (Val 1) (Val 2)
                "y" -> Val 4
                _   -> Val 7
result = expr1 >>= func
-- result will be: Add (Add (Val 1) (Val 2)) (Add (Val 3) (Val 4))
-- End Problem #2
