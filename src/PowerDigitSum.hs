module PowerDigitSum (powerDigitSum) where


powerDigitSum :: Integer -> Integer ->Integer
powerDigitSum  num acc 
  |  num > 0  = powerDigitSum  (num `div` 10) (acc + (num `mod` 10))
  |  otherwise   = acc