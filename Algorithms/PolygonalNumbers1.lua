--[[--
 Math Algorithms

 Purpose:       Generates a sequence of polygonal numbers
 Language:      Lua
 Author:        José Cintra
 Year:          2018
 Web Site:      https://github.com/JoseCintra/MathAlgorithms
 License:       Unlicense, described in http://unlicense.org
--]]--

local function triangularNumber(i)
  -- Calculates the triangular number by the index
  return ((i*(i+1))/2)
end
  
local function squareNumber(i)
  -- Calculates the square number by the index
  return (i*i)
end

local function pentagonalNumber(i)
  -- Calculates the pentagonal number by the index
  return ((i*(3*i-1))/2)
end

local function hexagonalNumber(i)
  -- Calculates the hexagonal number by the index
  return (i*(2*i-1))
end

local function hexNumber(i)
  -- Calculates the hex number (Martin Gardner) by the index
  return (1 - 3*i + 3*i^2)
end

local function pyramidalNumber(i)
  -- Calculates the pyramidal number by the index
  return ((i*(i+1)*(i+2))/6)
end


-- Main routine: Get the number of terms and generate the sequences 
print("\nSequences of Polygonal Numbers")
io.write("\nEnter the number of terms in the sequences: ")
local n = tonumber(io.read())
local i = 0 -- index

-- Triangular numbers
print("\nTriangular Numbers:")
for i = 1,n do
  io.write(math.floor(triangularNumber(i)).." ")
end  

-- Square numbers
print("\n\nSquare Numbers:")
for i = 1,n do
  io.write(math.floor(squareNumber(i)).." ")
end  

-- Pentagonal numbers
print("\n\nPentagonal Numbers:")
for i = 1,n do
  io.write(math.floor(pentagonalNumber(i)).." ")
end  

-- Hexagonal numbers
print("\n\nHexagonal Numbers:")
for i = 1,n do
  io.write(math.floor(hexagonalNumber(i)).." ")
end  

-- Hex numbers (Martin Gardner)
print("\n\nHex Numbers:")
for i = 1,n do
  io.write(math.floor(hexNumber(i)).." ")
end  

-- Pyramidal numbers 
print("\n\nPyramidal Numbers:")
for i = 1,n do
  io.write(math.floor(pyramidalNumber(i)).." ")
end 

print("\n\nEND\n")

