# Math Algorithms
#
# Purpose:       Program to find transpose of a matrix
# Language:      Python
# Author:        José Cintra
# Year:          2021
# Web Site:      https://github.com/JoseCintra/MathAlgorithms
# License:       Unlicense, described in http://unlicense.org
# Online demo:   https://onlinegdb.com/ByWG_1BUd

# Defining the matrix
# Change this to perform calculations with other matrices
a = [
    [1, 0],
    [2, 1],
    [0, 2]
]

at = []  # Transpose of the Matrix

# Calculate the transpose matrix
print("Transpose of Matrices\n")
for col in range(len(a[0])):
    temp = []
    for row in range(len(a)):
        temp.append(a[row][col])
    at.append(temp)


# print results
print("Matrix A:")
for row in range(len(a)):
    for col in range(len(a[row])):
        print(a[row][col], end='')
        print(" ", end='')
    print("")

print("Transpose of A:")
for row in range(len(at)):
    for col in range(len(at[row])):
        print(at[row][col], end='')
        print(" ", end='')
    print("")
