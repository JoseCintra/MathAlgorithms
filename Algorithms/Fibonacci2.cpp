// Math Algorithms
//
// Purpose:       Get a Fibonacci number through the Binet's Formula
// Language:      C++
// Author:        José Cintra
// Date:          2020, December
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org

#include <iostream>
#include <stdlib.h>
#include <math.h>
using namespace std;
int main() {
  int i,f;
  cout << "The Fibonacci Numbers\n";
  cout << "Enter the element's position: "; 
  cin >> i;
  f = round((pow((1+sqrt(5))/2,i)-pow((1-sqrt(5))/2,i))/ sqrt(5));
  cout << "The element in this position is: " << f;
}
