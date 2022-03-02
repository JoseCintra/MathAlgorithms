/*
Math Algorithms

Purpose:  Regular Polygon Calculator
Language: C
Author:   José Cintra
Year:     2022
Web Site: https://github.com/JoseCintra/MathAlgorithms
License:  Unlicense, described in http://unlicense.org

References:
https://www.todamateria.com.br/poligonos/
https://www.infoescola.com/matematica/area-de-poligonos-regulares/

*/

#include <stdio.h>
#include <math.h>

int main(int argc, char **argv)
{
   // Data Entry
   int   n = 6;   // Number of sides of the polygon. Change this to test other polygons
   float s = 3.0; // Side lenght. Change this to test other polygons

   // Calculations
   int   nd = 0;   // Number of diagonals
   int   ndc = 0;  // Number of diagonals passing through the center
   float si = 0.0; // Sum of interior angles
   float i = 0.0;  // Interior angle
   float e = 0.0;  // Exterior angle
   float p = 0.0;  // perimeter
   float a = 0.0;  // Area
   float ap = 0.0; // Apothem

   nd = (n * (n - 3)) / 2;
   ndc = (n % 2 == 0) ? (n / 2) : 0;
   si = (180* (n - 2));
   i = si / n;
   e = 180 - i;
   p = n * s;
   ap = s / ( 2 * tan(M_PI / n) );
   a = (n * s * ap) / 2;

   printf("Regular Polygon Calculator\n\n");
   printf("Number of sides of the polygon: %d\n",n);
   printf("Side lenght: %f\n\n",s);

   printf("Number of diagonals: %d\n",nd);
   printf("Number of diagonals passing through the center: %d\n",ndc);
   printf("Sum of interior angles: %f\n",si);
   printf("Interior angle: %f\n",i);
   printf("Exterior angle: %f\n",e);
   printf("Perimeter: %f\n",p);
   printf("Apothem: %f\n",ap);
   printf("Area: %f\n",a);

   return 0;
}

