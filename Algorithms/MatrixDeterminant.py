"""  

Math Algorithms
Name:        MatrixDeterminant.py
Purpose:     Calculating the determinant of 3x3 matrices by the Sarrus rule
Language:    Python
Author:      José Cintra
Year:        2021
Web Site:    https://github.com/JoseCintra/MathAlgorithms
License:     Unlicense, described in http://unlicense.org
Online demo: https://onlinegdb.com/ByWG_1BUd
Notes:
1) This algorithm is available without guarantees and must be tested before being made available in production environments
2) The data entry is fixed in the body of the algorithm, but can be changed by the user, if necessary
3) The input values are not being validated according to the allowed range !!! This is up to the user
4) The output data is being displayed without a concern for formatting
5) The goal here is just to highlight the solution of the problem through the algorithm stripped of any paradigm, with the hope that it will be useful to students in the field 

"""

# Defining the matrix 3x3
# Change this to perform calculations with other matrices
a = [
    [3, 1, 2],
    [0, 2, 0],
    [0, 4, 1]
]

det = 0          # Determinant
r = 0            # Current line of the matrix in the loop
c = 0            # Current row of the matrix in the loop
l = len(a) - 1   # Lenght of Matrix (index)

# Calculating the determinant of the matrix
print("Matrix determinant\n")

for i in range(len(a)):
    prod = 1
    r = 0
    c = i
    for j in range(len(a)):
        prod = prod * a[r][c]
        r = r + 1
        c = c + 1
        if (c > l):
            c = 0
    det = det + prod

r = 0
c = l

for i in range(len(a)):
    prod = -1
    r = 0
    for j in range(len(a)):
        prod = prod * a[r][c]
        r = r + 1
        c = c - 1
        if (c < 0):
            c = l
    c = i
    det = det + prod

# print results
print("Matrix A:")
for row in range(len(a)):
    for col in range(len(a[row])):
        print(a[row][col], end='')
        print(" ", end='')
    print("")

print("\nDeterminant of the matrix A:", det)
