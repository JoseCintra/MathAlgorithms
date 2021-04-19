# Math Algorithms
#
# Purpose:       Performs the product of any two matrices
# Language:      Python
# Author:        José Cintra
# Year:          2021
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org
# Online demo:   https://onlinegdb.com/HyhhwJrLu

# Defining the matrices A & B
# Change this to perform calculations with other matrices
a = [
    [28, 8, 7],
    [19, 5, 14],
    [17, 10, 11],
    [16, 13, 9],
    [18, 6, 14]
]

b = [
    [3],
    [1],
    [0]
]

prod = []  # Product Matrix

# Calculate the product
# print("Product of Matrices\n")
ra = 0  # A row of A
cb = 0  # A Collumn of B
temp = []  # A temporary row
while (ra < len(a)):
    sum = 0  # Sum of multiplications
    for i in range(len(a[0])):
        sum = sum + a[ra][i] * b[i][cb]
    temp.append(sum)
    cb = cb + 1
    if (cb == len(b[0])):
        cb = 0
        prod.append(temp)
        ra = ra + 1
        temp = []

# print results
print("Matrix A:")
for row in range(len(a)):
    for col in range(len(a[row])):
        print(a[row][col], end='')
        print(" ", end='')
    print("")

print("\nMatrix B:")
for row in range(len(b)):
    for col in range(len(b[row])):
        print(b[row][col], end='')
        print(" ", end='')
    print("")

print("\nMatrix A x B:")
for row in range(len(prod)):
    for col in range(len(prod[row])):
        print(prod[row][col], end='')
        print(" ", end='')
    print("")
