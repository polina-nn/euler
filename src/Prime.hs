module Prime 
  (largestPrimeFactor,
    primeByIndex,
    summationOfPrimes ) where

import qualified Data.Numbers.Primes as P

largestPrimeFactor :: Int -> Int 
largestPrimeFactor num = last $ P.primeFactors num 

primeByIndex :: Int -> Int
primeByIndex num = P.primes !! ( num-1)

summationOfPrimes :: Integer -> Integer
summationOfPrimes num =  sum $ takeWhile ( < num  ) P.primes