// Math Algorithms
//
// Purpose:       Printing the Pascal's triangle iteratively using the Stifel's Relation 
// Language:      C++
// Author:        José Cintra
// Year:          2018
// Web Site:      https://github.com/JoseCintra/MathAlgorithms
// License:       Unlicense, described in http://unlicense.org
// Online demo:   https://onlinegdb.com/r1Wo-LzLd

#include <iostream>
#include <stdlib.h>
#include <iomanip> // Formatted output
using namespace std;
int main(int argc, char *argv[])
  {
  int N; // Desired number of lines
  cout << "The Pascal's Triangle\n";
  
  N = 3; // Change this to test other input values

  int T[N][N];
  // generates Triangle using the Stifel's Relation
  for (int L = 0;(L<N);L++)
    for (int C = 0;(C <= L);C++)
      {
      if ((C == 0) || (L == C))
        T[L][C] = 1;
      else 
        T[L][C] = T[L-1][C] + T[L-1][C-1];  
      }
  // Print triangle 
  for (int L = 0;(L<N);L++)
    {
    for (int C = 0;(C<=L);C++)
       {
       cout << setw(6) << T[L][C];
       }
    cout << "\n";
    }
  return 0;
  }
