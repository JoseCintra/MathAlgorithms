Purpose: Get a Fibonacci number in a functional way 
Linguagem: Haskell
Author: Jose Cintra (josecintra@josecintra.com)

fibo :: Int -> Int
fibolist :: [Int]
fibolist = 0 : 1 : zipWith (+) fibolist (tail fibolist)
fibo n = fibolist!!n
