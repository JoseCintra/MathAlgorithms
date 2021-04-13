// Math Algorithms
//
// Purpose:       Approximation of the number PI through the Viete's series
// Language:      C
// Author:        José Cintra
// Year:          2018
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org
// Online demo:   https://onlinegdb.com/BJOtxIfUO

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
   double n, i, j;	 // Number of iterations and control variables
   double f; 		 // factor that repeats
   double pi = 1;
      
   printf("Approximation of the number PI through the Viete's series\n");


   n = 1000; // Change this to test other input values

   printf("\nPlease wait. Running for %lf iterations...\n",n);   
	
   for(i = n; i > 1; i--) {
      f = 2;
      for(j = 1; j < i; j++){
         f = 2 + sqrt(f);
      }
      f = sqrt(f);
      pi = pi * f / 2;
   }
   pi *= sqrt(2) / 2;
   pi = 2 / pi;
   
   printf("\nAproximated value of PI = %1.16lf\n", pi);  

}

