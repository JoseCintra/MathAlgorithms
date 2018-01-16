// Purpose: Get a Fibonacci number through the Binet's Formula 
// Linguagem: C++
// Author: Jose Cintra (jose.cintra@html-apps.info)

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
