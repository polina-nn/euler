module Main (main) where

import qualified FactorialDigitSum as FDS
import qualified Fibonacci as F
import qualified MultiplesOf3Or5 as MOO
import qualified SumSquareDifference as SSD
import qualified PowerDigitSum as PDS
import qualified Prime as P 

main :: IO ()
main = do
  putStrLn $ "1. Factorial digit sum (problem 20). The sum of the digits in the number 100! is "
  putStrLn $ show (FDS.factorialDigitSum 100)
  putStrLn $ "2. Multiples of 3 or 5 (problem 1). The sum of all the multiples of 3 or 5 below 1000 is "
  putStrLn $ show (MOO.sumMultiplesOf3Or5 1000)
  putStrLn $ "3. 1000-digit Fibonacci number (problem 25). The index of the first term in the Fibonacci sequence to contain 1000 digits is "
  putStrLn $ show (F.fibonacciNumber 4000)
  putStrLn $ "4. Even Fibonacci numbers (problem 2). By considering the terms in the Fibonacci sequence whose values do not exceed four million, the sum of the even-valued terms  is "
  putStrLn $ show (F.sumEvenFibonacciNumbers 1 0)
  putStrLn $ "5. Sum square difference (problem 6). The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is "
  putStrLn $ show (SSD.sumSquareDifference 100)
  putStrLn $ "6. Power digit sum (problem 16). The sum of the digits of the number 2^1000 is "
  putStrLn $ show (PDS.powerDigitSum (2^1000) 0)
  putStrLn $ "7. Largest prime factor (problem 3). The largest prime factor of the number 600851475143 is "
  putStrLn $ show (P.largestPrimeFactor 600851475143)
  putStrLn $ "8. 10001st prime (problem 8). The 10 001st prime number is "
  putStrLn $ show (P.primeByIndex 10001)
  putStrLn $ "9. Summation of primes (problem 10). The sum of all the primes below two million is "
  putStrLn $ show (P.summationOfPrimes 2000000)