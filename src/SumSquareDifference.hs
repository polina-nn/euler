module SumSquareDifference
  ( sumSquareDifference,
  )
where


sumSquareDifference :: Integer -> Integer
sumSquareDifference num = a*a -   b
   where 
     a = sum [1..num]
     b = sum [x| y <- [0..num], let x = y*y ] 
                