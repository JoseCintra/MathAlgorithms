// Math Algorithms
//
// Purpose:       Approximation of the number pi through the Nilakantha's series
// Language:      C
// Author:        José Cintra
// Year:          2018
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org

#include <stdio.h>
#include <stdlib.h>

main() {

   double n, i;    // Number of iterations and control variable
   double s = 1;   //Signal for the next operation
   double pi = 3;

   printf("Approximation of the number PI through the sequence of the Nilakantha's series\n");
   printf("\nEnter the number of iterations: ");	
   scanf("%lf",&n);
   printf("\nPlease wait. Running...\n");      

   for(i = 2; i <= n*2; i += 2){
     pi = pi + s * (4 / (i * (i + 1) * (i + 2)));
     s = -s;
   }

   printf("\nAproximated value of PI = %1.16lf\n", pi);  

}

