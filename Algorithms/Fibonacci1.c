// Math Algorithms
//
// Purpose:       Computing the Fibonacci numbers in a Iterative way
// Language:      C
// Author:        José Cintra
// Year:          2020
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org

#include <stdio.h>
#include <stdlib.h>

main() { 

  unsigned long int n, current = 1, last = 0, penult = 1, count; 

  printf("The Fibonacci Numbers\n");
  printf("\nEnter the number of elements: ");
  scanf("%d",&n);

  for (count = 1; count <= n; count++) {
    current = last + penult;
    penult = last;
    last = current;
    printf("%d  ",current);
  }
      
}
