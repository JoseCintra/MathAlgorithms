# Math Algorithms
#
# Purpose:       Printing the Pascal's Triangle recursively using the Stifel's Relation
# Language:      Python
# Author:        José Cintra
# Year:          2018
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org
# Online demo:   https://onlinegdb.com/S1MSvLfIu

def triangulo(n,k):

    if (k == 0) or (k == n):
      retorno = 1
    else:
      retorno = triangulo(n-1, k-1) + triangulo(n-1, k)
    return retorno

print ("The Pascal's Triangle")

#Change this to test other input values
num = 4 

for n in range(0,num):
    for k in range(0,n+1):
        print (triangulo(n, k),end = '')
    print ("")
    
