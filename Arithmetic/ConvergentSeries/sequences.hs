-- Calculating some sequences and series
 
-- Language: Haskell

-- 2018, Jose Cintra
-- josecintra@josecintra.com

-- Sequences 
facts = 1 : zipWith (*) facts [1..]  -- infinite sequence of factorials
fibs =  1 : 1 : zipWith (+) fibs (tail fibs) -- Infinite sequence of Fibonacci numbers
odds = [1,3..] -- infinite sequence of odd numbers
signs = cycle [1,(-1)] -- infinite sequence that alternates the numbers 1 and -1
euler = [(1 / x) | x <- facts] -- Sequence for the Euler constant by the Taylor series
pi_seq = zipWith (*) signs ([(1 / p) | p <- odds]) -- Sequence for the leibniz series 
fib_const = [(1 / x) | x <- fibs] -- Sequence for the Reciprocal Fibonacci Constant
gp = [(9 / x) | x <- [(10 ^ x) | x <- [1,2..]]] -- Sequence for Geometric Progression 

main = do 
  -- Sequences
  putStr "Sequences and series in Haskell\n\n"

  putStr "Factorials sequence = "
  print (take 10 facts)

  putStr "Fibonacci sequence = "
  print (take 10 fibs)

  putStr "Odd numbers sequence = "
  print (take 10 odds)

  -- Series
  putStr "\nEuler constant by Taylor series = "
  print (sum (take 50 euler))

  putStr "PI number by the Leibniz series= "
  print ((sum (take 100000 pi_seq)) * 4) 

  putStr "Reciprocal Fibonacci Constant = "
  print (sum (take 100 fib_const) ) 

  putStr "Geometric Progression for the number one =  "
  print (sum (take 100 gp)) 

