// Purpose: Printing the Pascal's triangle iteratively using the Stifel's Relation 
// Parameter: The number of rows you want 
// Language: C++
// Author: Jose Cintra (josecintra@josecintra.com)

#include <iostream>
#include <stdlib.h>
#include <iomanip> // Formatted output
using namespace std;
int main(int argc, char *argv[])
  {
  int N;
  cout << "The Pascal's Triangle\n";
  cout << "Enter the number of lines: "; 
  cin >> N;
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
