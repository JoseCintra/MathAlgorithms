---------------------
-- Math Algorithms --
---------------------

-- Name: DoubleFactorial
-- Purpose: Calculates a recursive double factorial of a number
-- References: https://en.wikipedia.org/wiki/Double_factorial
-- Language: Lua
-- Year: 2024
-- Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)
-- Run Online at: https://www.mycompiler.io/view/HKJnNGeyDaf 


-- Defines a recursive double factorial function
function doublefact (n)
  if (n == 0  or n==1) then
    return 1
  else 
    return n * doublefact(n - 2)
  end
end

-- Calculates the double factorial of the first 20 natural numbers
io.write("Double Factorial Calculator","\n\n")
for i = 0, 19 do
  io.write(i, "!! = ",doublefact(i), "\n") 
end
