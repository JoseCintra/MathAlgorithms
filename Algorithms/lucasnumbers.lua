---------------------
-- Math Algorithms --
---------------------

-- Name: Lucas Numbers
-- Purpose: Calculate a recursive factorial of a number
-- References: https://en.wikipedia.org/wiki/Factorial
-- Language: Lua
-- Year: 2024
-- Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)
-- Run Online at: https://www.mycompiler.io/view/FJfAEmzfV6k


-- Defines a recursive factorial function
function lucas (n)
  if n == 0 then
    return 2
  elseif n==1 then
    return 1
  else  
    return lucas(n-1) + lucas(n-2)
  end
end

-- Calculates the factorial of the first 17 natural numbers
for i = 0, 50 do
  io.write(lucas(i), " ")
end
