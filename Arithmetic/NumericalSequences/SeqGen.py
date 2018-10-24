# Numerical Sequences Generator
# Generates several mathematical sequences by calculating their terms individually
# Language: Python

# 2018, Jose Cintra
# josecintra@josecintra.com

# initialization
import math 
formulas = {'Fibonacci numbers': ['round((pow((1+math.sqrt(5))/2,i)-pow((1-math.sqrt(5))/2,i))/ math.sqrt(5))',1],
            'Lucas numbers':['((1 + math.sqrt(5))/2) ** i + ((1 - math.sqrt(5))/2) ** i',0],
            'Triangular numbers': ['(i*(i+1))/2',1],
            'Square numbers': ['i*i',1],
            'Pentagonal numbers': ['(i*(3*i-1))/2',1],
            'Hexagonal numbers': ['i*(2*i-1)',1],
            'Catalan numbers': ['math.factorial(2*i)/(math.factorial(i+1)*math.factorial(i))',0],
            'Cullen numbers': ['i*2**i + 1',0],
            'Pronic numbers': ['i*(i+1)',0],
            'Woodall numbers': ['i*2**i-1',1]
           }

# Data entry
print("Mathematical sequences generator\n")
n = int(input("Enter the number of terms in the sequence: "))

# shows the sequences
for key,value in formulas.items():
  print()
  print (key)
  start = value[1]
  for i in range(0, (n + start)):
    item = int(eval(value[0]))
    if (i < start) :
      continue
    print(item,'  ', end = '')
  print()
        
# end
