--[[--
 Math Algorithms

 Purpose:       Gets the triangle type
 Language:      Lua
 Author:        José Cintra
 Year:          2020
 Web Site:      https://github.com/JoseCintra/MathAlgorithms
 License:       Unlicense, described in http://unlicense.org
--]]--

local function triangleType(a,b,c)
  local bySide,byAngle = nil

  if (a < (b + c) and b < (a + c) and c < (a + b)) then

    --Type of the triangle by sides
    if ( a == b and b == c ) then
      bySide = 1 -- Equilateral
    elseif (a == b or b == c or a == c) then
      bySide = 2 -- Isosceles
    else
      bySide = 3 -- Scalene
    end  

    --Type of the triangle by Angle
    if (a^2 == b^2 + c^2) or (b^2 == a^2 + c^2) or (c^2 == a^2 + b^2)  then
      byAngle = 1 -- Right
    elseif (a^2 > b^2 + c^2) or (b^2 > a^2 + c^2) or (c^2 > a^2 + b^2)  then
      byAngle = 2 -- Obtuse
    else
      byAngle = 3 -- Acute
    end

  end

  return bySide,byAngle

end  
local bySideTypes = {"Equilateral","Isosceles","Scalene"}
local byAngleTypes = {"Right","Obtuse","Acute"}

print("Triangle Type\n")
print("Enter the value of A side: ")
local a = tonumber(io.read())
print("Enter the value of B side: ")
local b = tonumber(io.read())
print("Enter the value of C side: ")
local c = tonumber(io.read())

local bySide,byAngle = triangleType(a,b,c)

if (bySide ~= nil) then
  print ("The type of the triangle is " .. bySideTypes[bySide] .. " and " .. byAngleTypes[byAngle])
else
  print ("These sides do not form a triangle")
end
