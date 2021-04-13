# Math Algorithms
#
# Purpose:       Calculating some convergent series
# Language:      Python
# Author:        José Cintra
# Year:          2018
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org
# Online demo:   https://onlinegdb.com/SJXSBLfLO

import math

# 1.0 Calculating Euler's constant by the Taylor series (More readable version)

v = 0.0 # convergence value
i = 0 # control variable for the loop
n = 100 # iterations number for the loop
for i in range(0,n):
    v = v + 1 / math.factorial(i)

print('e = ',v)
print()

# 1.1 Calculating Euler's constant by the Taylor series (Faster version)

v = 1.0 # convergence value
i = 0 # control variable for the loop
n = 100 # iterations number for the loop
fat = 1 # fatorial
for i in range(1,n):
    fat = fat * i
    v = v + 1 / fat
    
print('e = ',v)
print()


# 2.0 Calculating PI/4 by the Leibniz series 

n = 1000000 # iterations number for the loop
v = 0.0 # convergence value
i = 0 # control variable for the loop
sign = 1 # Controls signal switching in series
for i in range(1,n,2):
  v = v + sign * (1 / i)
  sign = -sign

print('pi/4  = ',v)
print('pi  = ', v * 4)
print()

# 3.0 Reciprocal Fibonacci constant (Using the Binet F�rmula)
n = 1000 # iterations number for the loop
v = 0.0 # convergence value
i = 0 # control variable for the loop
fib = 1.0 # Calculate fibonacci number by the index
for i in range(1,n):
  fib = round((pow((1+math.sqrt(5))/2,i)-pow((1-math.sqrt(5))/2,i))/ math.sqrt(5))
  v = v + (1 / fib)
  
print('fi  = ',v)
print()

# 3.1 Reciprocal Fibonacci constant (Faster version)
n = 1000 # iterations number for the loop
i = 0 # control variable for the loop
v = 0.0 # convergence value
fib = 0.0 # Fibonacci number
last = 1.0 # auxiliar var for fibonacci calculation
for i in range(1,n):
  fib,last = last,fib + last
  v = v + (1 / fib)
  
print('fi  = ',v)
print()

# 4.0 Sum of Geometric progression with a1 = 0,9 and r = 10
n = 999999999999 # iterations number for the loop
v = 0.0 # convergence value
i = 10 # control variable for the loop

while (i < n):
  v = v + (9 / i)
  i = i * 10
  
print('gp  = ',v)
print()

# end
