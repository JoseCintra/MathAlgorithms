# Math Algorithms
#
# Purpose:       Generates sequences of polygonal numbers
# Language:      Python
# Author:        José Cintra
# Year:          2020
# Web Site:      https:#github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org

print("Sequences of Polygonal Numbers\n")
n = int(input("Enter the number of terms in the sequences: "))

polyFormulas = {'Triangular': '(i*(i+1))/2',
                'Square': 'i*i',
                'Pentagonal': '(i*(3*i-1))/2',
                'Hexagonal': 'i*(2*i-1)'}

for key,value in polyFormulas.items():
  print()
  print (key,' numbers:')
  for i in range(1, n):
    item = int(eval(value))  
    print(item,'  ', end = '')
  print()
        
