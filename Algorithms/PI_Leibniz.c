// Math Algorithms
//
// Purpose:       Approximation of the number pi through the Leibniz's series
// Language:      C
// Author:        José Cintra
// Year:          2018
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org
// Live demo:     https://onlinegdb.com/BJ3jP4GUO


#include <stdio.h>
#include <stdlib.h>

main() {

   double n, i;      // Number of iterations and control variable
   double s = 1;     //Signal for the next iteration
   double pi = 0;

   n = 1000; // Change this to test other input values

   printf("Approximation of the number PI through the Leibniz's series\n");

   printf("\nPlease wait. Running %lf iterations...\n",n);      

   for(i = 1; i <= (n * 2); i += 2){
     pi = pi + s * (4 / i);
     s = -s;
   }

   printf("\nAproximated value of PI = %1.16lf\n", pi);  

}

