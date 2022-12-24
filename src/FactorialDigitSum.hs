module FactorialDigitSum
  ( factorialDigitSum,
    factorial,
    digits',
  )
where

import qualified Data.Char as Char

factorial :: Integer -> Integer -> Integer
factorial 1 acc = acc
factorial num acc = factorial (num -1) (acc * num)

digits' num = map Char.digitToInt (show (factorial num 1))

factorialDigitSum :: Integer -> Int
factorialDigitSum num = let digits = map Char.digitToInt (show (factorial num 1)) in sum digits
