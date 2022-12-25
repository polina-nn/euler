module LargestPalindromeProduct (largestPalindromeProduct) where
 
import qualified Data.List as List 

largestPalindromeProduct :: Integer 
largestPalindromeProduct = last $ List.sort $ map (read) (help  c f )
    where 
    product :: [Integer]  -> [Integer]  -> [Integer]  
    product s1 s2  = [x*y | x <- s1, y <- s2] 
    a = product [100..999] [100..999]
    c = map ( show) a
    f = map ( reverse. show) a
    help :: [String] -> [String] -> [String]
    help [] [] = []
    help (x:xs) (y:ys) 
       | x == y   = x : help xs ys 
       | x /= y   = help xs ys
