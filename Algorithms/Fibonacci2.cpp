// Math Algorithms
//
// Purpose:       Get a Fibonacci number through the Binet's Formula
// Language:      C++
// Author:        José Cintra
// Date:          2020, December
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org
// Online demo:   https://onlinegdb.com/HygwZUfUO

#include <iostream>
#include <stdlib.h>
#include <math.h>
using namespace std;
int main() {
  int i,f;
  cout << "The Fibonacci Numbers\n";
  
  // i is the element position
  i = 7; // Change this to test other input values

  f = round((pow((1+sqrt(5))/2,i)-pow((1-sqrt(5))/2,i))/ sqrt(5));
  cout << "The element in this position is: " << f;
}
