--------------------------------------------------
-- Math Algorithms                              --
-- https://github.com/JoseCintra/MathAlgorithms --
--------------------------------------------------

-- Name: Statistical Mode
-- Purpose: Calculates the statistical mode of a data set using maps as a data structure
-- References: https://en.wikipedia.org/wiki/Mode_(statistics)
-- Language: Lua
-- Year: 2024
-- Author: José Cintra 
-- Run Online at: 

io.write("\nStatistical Mode\n")
io.write("------------------\n")
data = {2,3,9,7,5,3,7,3}
mode = {}
l = table.getn(data)
for i = 1, l, 1 do
  if mode[data[i]] == nil then
    mode[data[i]] = 1
  else
    mode[data[i]] = mode[data[i]] + 1
  end
end
for k,v in next,mode do
  io.write(k,v, "\n")
end  
