// Math Algorithms
//
// Purpose:       Approximation of the number pi through the Wallis's series
// Language:      C
// Author:        José Cintra
// Year:          2018 
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org


#include <stdio.h>
#include <stdlib.h>

main() {

   double n, i; 		// Number of iterations and control variable
   double pi = 4;

   printf("Approximation of the number pi through the Wallis's series\n");
   printf("\nEnter the number of iterations: ");	
   scanf("%lf",&n);
   printf("\nPlease wait. Running...\n");      

   for(i = 3; i <= (n + 2); i+=2)	
      pi = pi * ((i - 1) / i) * (( i + 1) / i);

   printf("\nAproximated value of PI = %1.16lf\n", pi);  

}
