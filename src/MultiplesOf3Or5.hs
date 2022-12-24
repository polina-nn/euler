module MultiplesOf3Or5
  ( sumMultiplesOf3Or5,
  )
where

multiplesOf3Or5 :: Int -> [Int]
multiplesOf3Or5 num = filter (p) [1 .. (num -1)]
  where
    p x = (x `mod` 3 == 0) || (x `mod` 5 == 0)

sumMultiplesOf3Or5 :: Int -> Int
sumMultiplesOf3Or5 num = sum (multiplesOf3Or5 num)
