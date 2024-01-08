---------------------
-- Math Algorithms --
---------------------

-- Name: Factorial
-- Purpose: Calculate a recursive factorial of a number
-- References: https://en.wikipedia.org/wiki/Factorial
-- Language: Lua
-- Year: 2024
-- Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)
-- Run Online at: https://www.mycompiler.io/view/FJfAEmzfV6k


-- Defines a recursive factorial function
function fact (n)
  if n <= 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

-- Calculates the factorial of the first 17 natural numbers
for i = 0, 16 do
  io.write("Factorial of ", i, " is ",fact(i), "\n") 
end
