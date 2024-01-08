---------------------
-- Math Algorithms --
---------------------

-- Name: AtomId
-- Purpose: Identifies the atom based on its elementary particles
-- References: https://uen.pressbooks.pub/introductorychemistry/chapter/the-structure-of-the-atom/
-- Language: Lua
-- Year: 2024
-- Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)
-- Run Online at:

io.write("Atom Identification\n\n")
io.write("Enter the number of protons: ")
p = tonumber(io.read())
io.write("Enter the number of neutrons: ")
n = tonumber(io.read())
io.write("Enter the number of electrons: ")
e = tonumber(io.read())
z = p     -- atomic number
a = z + n -- atomic mass
c = p - e -- electric charge
t = "cation"
if (c < 0) then 
  t = "anion"
elseif (c == 0) then 
  t = "neutral atom"
end
if (p < 1 or n < 0 or e < 0) then
  io.write("The number of particles entered is invalid\n")
else
  io.write("\nThis atom is a ",t," (",c,"e) with atomic number of ",p, " and mass number of ",a,"\n")
end



