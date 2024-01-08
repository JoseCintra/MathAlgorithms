---------------------
-- Math Algorithms --
---------------------

-- Name: Tribonacci Number
-- Purpose: Recursively returns the nth number of the Tribonacci sequence
-- References: https://mathworld.wolfram.com/TribonacciNumber.html
-- Language: Lua
-- Year: 2024
-- Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)
-- Run Online at: 

-- Defines a recursive Tribonacci function
function tribonacci (n)
  if n == 0 then
    return 0
  elseif n < 3 then
    return 1
  else  
    return tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3)
  end
end

-- Choose a random integer n and calculate the nth term of the Tribonacci sequence
math.randomseed(os.time())
local n = math.random(20)
io.write("\n","The ", n, "th number of Tribonacci sequence is ", tribonacci(n),"\n")


