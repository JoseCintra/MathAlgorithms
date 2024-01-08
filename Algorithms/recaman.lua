--------------------------------------------------
-- Math Algorithms                              --
-- https://github.com/JoseCintra/MathAlgorithms --
--------------------------------------------------

-- Name: Recamán’s sequence
-- Purpose: Prints the first n numbers of Recaman's sequence
-- References: https://en.wikipedia.org/wiki/Recam%C3%A1n%27s_sequence
-- OEIS Sequence number: A005132
-- Language: Lua
-- Year: 2024
-- Author: José Cintra 
-- Run Online at: 

math.randomseed(os.time())
local n = math.random(100) -- Generates a random value for n
s = {} -- Table created to test if the number already exists in the sequence
prev = 0

io.write("\nRecaman's Sequence\n")
io.write("------------------\n")
io.write("\nThe ", n, " first numbers of Recaman's sequence is:\n ")
for i = 0, (n - 1), 1 do
  x = prev - i
  if (x > 0 and s[x] == nil) then
    s[x] = x
  else
    x = prev + i
    s[x] = x
  end
  prev = x
  io.write(x," ")
end
io.write("\n\n")





