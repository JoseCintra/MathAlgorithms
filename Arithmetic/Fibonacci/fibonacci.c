// Purpose: Computing the fibonacci numbers in a Iterative way
// Language: C
// Author: Jose Cintra (josecintra@josecintra.com)
  
main() { 

  unsigned long int n, current = 1, last = 0, penult = 1, count; 

  printf("The Fibonacci Numbers\n");
  printf("\nEnter the number of elements: ");
  scanf("%d",&n);

  for (count = 1; count <= n; count++) {
    current = last + penult;
    penult = last;
    last = current;
    printf("%d  ",current);
  }
      
}
