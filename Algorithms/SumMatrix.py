# Math Algorithms
#
# Purpose:       Performs the sum of any two matrices
# Language:      Python
# Author:        José Cintra
# Year:          2021
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org
# Online demo:   https://onlinegdb.com/HyhhwJrLu

# Defining the matrices A & B
# Change this to perform calculations with other matrices
a = [
    [1, 0, 9],
    [2, 1, 5],
    [0, 2, 7]
]

b = [
    [0, 8, 3],
    [4, 5, 0],
    [1, 2, 3]
]

sum = [] # Result Matrix

# Calculate the sum
print("Sum of Matrices\n")
for row in range(len(a)):
    temp = []
    for col in range(len(a[row])):
        temp.append(a[row][col] + b[row][col])
    sum.append(temp)

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

print("\nMatrix A + B:")
for row in range(len(sum)):
    for col in range(len(sum[row])):
        print(sum[row][col], end='')
        print(" ", end='')
    print("")