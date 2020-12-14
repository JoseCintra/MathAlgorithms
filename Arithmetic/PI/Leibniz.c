// Approximation of the number PI through the Leibniz's series
// Language: C
// Author: Jose Cintra (josecintra@josecintra.com)

#include <stdio.h>
#include <stdlib.h>

main() {

   double n, i;      // Number of iterations and control variable
   double s = 1;     //Signal for the next iteration
   double pi = 0;

   printf("Approximation of the number PI through the Leibniz's series\n");
   printf("\nEnter the number of iterations: ");	
   scanf("%lf",&n);
   printf("\nPlease wait. Running...\n");      

   for(i = 1; i <= (n * 2); i += 2){
     pi = pi + s * (4 / i);
     s = -s;
   }

   printf("\nAproximated value of PI = %1.16lf\n", pi);  

}

