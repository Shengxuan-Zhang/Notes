module Main where

import System.Random

guess :: Int -> IO ()
guess x = do
    putStrLn "Enter your guess:"
    y <- getLine
    let z = read y :: Int
    if z > 100 || z < 1 then do
        putStrLn "Out of range."
        guess x
    else if z > x then do
        putStrLn "Too high!"
        guess x
    else if z < x then do
        putStrLn "Too low!"
        guess x
    else
        putStrLn "Correct!"

main :: IO ()
main = do
    x <- randomRIO (1, 100) :: IO Int
    guess x

