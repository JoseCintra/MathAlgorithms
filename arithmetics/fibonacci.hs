Purpose: Get a Fibonacci number in a functional way 
Linguagem: Haskell
Author: Jose Cintra (jose.cintra@html-apps.info)

fibo :: Int -> Int
fibolist :: [Int]
fibolist = 0 : 1 : zipWith (+) fibolist (tail fibolist)
fibo n = fibolist!!n