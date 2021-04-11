# Math Algorithms
#
# Purpose:       Printing the Pascal's Triangle recursively using the Stifel's Relation
# Language:      Python
# Author:        José Cintra
# Year:          2018
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org

def triangulo(n,k):

    if (k == 0) or (k == n):
      retorno = 1
    else:
      retorno = triangulo(n-1, k-1) + triangulo(n-1, k)
    return retorno

print "The Pascal's Triangle"
num = int(raw_input('Enter the number of lines: '))
for n in range(0,num):
    for k in range(0,n+1):
        print triangulo(n, k),
    print
    
