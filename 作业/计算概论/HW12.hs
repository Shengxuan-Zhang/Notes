module HW12 where

import Prelude hiding (Maybe (..))

-- Problem #1: Maybe, Foldable and Traversable
data Maybe a = Nothing | Just a
  deriving (Show, Eq, Ord)

instance Functor Maybe where
  fmap :: (a -> b) -> Maybe a -> Maybe b
  fmap _ Nothing  = Nothing
  fmap f (Just x) = Just (f x)

instance Foldable Maybe where
  foldMap :: Monoid m => (a -> m) -> Maybe a -> m
  foldMap _ Nothing = mempty
  foldMap f (Just x) = f x
  foldl :: (b->a->b) -> b -> Maybe a -> b
  foldl _ v Nothing = v
  foldl f v (Just x) = f v x
  foldr :: (a->b->b) -> b -> Maybe a -> b
  foldr _ v Nothing = v
  foldr f v (Just x) = f x v

foldMaybe :: (Monoid a) => Maybe a -> a
foldMaybe Nothing = mempty
foddMaybe (Just x) = x

instance Traversable Maybe where
  traverse :: Applicative f => (a -> f b) -> Maybe a -> f (Maybe b)
  traverse _ Nothing = pure Nothing
  traverse f (Just x) = Just <$> f x

-- End Problem #1

-- Problem #2: Tree, Foldable and Traversable
data Tree a = Leaf | Node (Tree a) a (Tree a)
  deriving (Show)

instance Functor Tree where
  fmap :: (a -> b) -> Tree a -> Tree b
  fmap _ Leaf = Leaf
  fmap f (Node l x r) = Node (fmap f l) (f x) $ fmap f r

instance Foldable Tree where
  foldMap :: Monoid m => ( a -> m ) -> Tree a -> m
  foldMap _ Leaf = mempty
  foldMap f (Node l x r) = foldMap f l <> f x <> foldMap f r
  foldl :: (b->a->b) -> b -> Tree a -> b
  foldl _ v Leaf = v
  foldl f v (Node l x r) = foldl f (f (foldl f v l) x)  r
  foldr :: (a->b->b) -> b -> Tree a -> b
  foldr _ v Leaf = v
  foldr f v (Node l x r) = foldr f (f x (foldr f v r )) l

foldTree :: (Monoid a) => Tree a -> a
-- foldTree = foldMap id
foldTree Leaf = mempty
foldTree (Node l x r) = foldTree l <> x <> foldTree r

instance Traversable Tree where
  traverse :: Applicative f => ( a -> f b ) -> Tree a -> f (Tree b)
  traverse _ Leaf = pure Leaf
  traverse f (Node l x r) = Node <$> traverse f l <*> f x <*> traverse f r

-- End Problem #2

-- Problem #3: fibonacci using zip/tail/list-comprehension
fibs :: [Integer]
fibs = 0 : 1 : [ a + b | (a,b) <- zip fibs (tail fibs) ]

-- End Problem #3

-- Problem #4: Newton's square root
sqroot :: Double -> Double
sqroot n = let arr = iterate (\x -> (x+n/x)/2) 1.0 in fst . head $ dropUntil (\(x,y) -> abs (x-y) < eps) $ zip arr $ tail arr
    where
        eps = 1e-5
        dropUntil :: (a -> Bool) -> [a] -> [a]
        dropUntil _ [] = []
        dropUntil p xs@(y:ys) | p y       = xs
                              | otherwise = dropUntil p ys

-- End Problem #4
