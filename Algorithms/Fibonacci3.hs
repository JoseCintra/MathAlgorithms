-- Math Algorithms
--
-- Purpose:       Get a Fibonacci number in a functional way
-- Language:      Haskell
-- Author:        José Cintra
-- Year:          2020
-- Web Site:      https://github.com/JoseCintra/MathAlgorithms
-- License:       Unlicense, described in http://unlicense.org

fibo :: Int -> Int
fibolist :: [Int]
fibolist = 0 : 1 : zipWith (+) fibolist (tail fibolist)
fibo n = fibolist!!n
