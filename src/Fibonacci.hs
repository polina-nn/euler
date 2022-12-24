module Fibonacci
  ( sumEvenFibonacciNumbers,
    fibonacciNumber,
  )
where

sumEvenFibonacciNumbers :: Integer -> Integer -> Integer
sumEvenFibonacciNumbers n acc
  | fib n < 4000000 && even (fib n) = sumEvenFibonacciNumbers (n + 1) (acc + (fib n))
  | fib n >= 4000000 = acc
  | otherwise = sumEvenFibonacciNumbers (n + 1) acc

fastFib :: Integer -> Integer -> Integer -> Integer
fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x + y
fastFib x y c = fastFib (x + y) x (c -1)

fib :: Integer -> Integer
fib n = fastFib 1 1 n

fibonacciNumber :: Integer -> Integer
fibonacciNumber n
  | fib n >= (10 ^ 999) = n
  | otherwise = fibonacciNumber (n + 1)