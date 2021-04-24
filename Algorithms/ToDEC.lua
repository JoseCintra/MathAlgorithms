--[[ 

Math Algorithms
Name:        ToDEC.lua
Purpose:     Conversion from numeric bases to decimal base
Language:    Lua
Author:      José Cintra
Year:        2021
Web Site:    https://github.com/JoseCintra/MathAlgorithms
License:     Unlicense, described in http://unlicense.org
Online demo: 
Notes:
1) This algorithm is available without guarantees and must be tested before being made available in production environments
2) The data entry is fixed in the body of the algorithm, but can be changed by the user, if necessary
3) The input values are not being validated according to the allowed range!
4) The output data is being displayed without a concern for formatting
5) The goal here is just to highlight the solution of the problem through the algorithm stripped of any programming paradigm

]]
local base = 16 -- Numeric base
local number = "B12A" -- Number in that base to convert to decimal
local len = string.len(number) -- Number of digitos
local dec = 0 -- Number in decimal base
local digits = "0123456789ABCDEF" -- Valid digits
for i = 1, len do
   digit = string.sub(number, i, i)
   value = string.find(digits,digit) - 1
   pow = len - i
   dec = dec + value * base ^ pow
end
print(number, "(2) = ", dec, "(10)")
