// Math Algorithms
//
// Purpose:       Computing the Fibonacci numbers in a Iterative way
// Language:      C
// Author:        José Cintra
// Year:          2020
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org
// Online Demo:   https://onlinegdb.com/HkxkTkIMLO

#include <stdio.h>
#include <stdlib.h>

int main() { 

  unsigned long int n, current = 1, last = 0, penult = 1, count; 

  // Input data: n is the number of elements in the sequence
  n = 10; // Change this to test other input values

  for (count = 1; count <= n; count++) {
    current = last + penult;
    penult = last;
    last = current;
    printf("%li ",current);
  }
      
}