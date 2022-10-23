package main

import (
   "fmt"
   "math"
)

/*

   Function: Determines whether the given number (num) is prime or not, using the trial division (6k + 1) method
   Input:
      num - Number to test (integer)
   Output:
      ret: Return value (true or false)
      err: Error condition - NOT USED. Only for compatibility reasons
   Theoretical foundation: https://en.wikipedia.org/wiki/Primality_test
   Date: Spring 2022
   Author: José Cintra - https://josecintra.com/blog

*/

func IsPrimeByDiv(num uint64) (ret bool, err bool) {

   var i uint64   // Loop control variable
   var lim uint64 // Loop limit
   err = false
   ret = true

   if (num == 2) || (num == 3) {
      goto finish
   }

   if (num <= 1) || (num%2 == 0) || (num%3 == 0) {
      ret = false
      goto finish
   }

   lim = uint64(math.Sqrt(float64(num)))
   for i = 5; i <= lim; i += 6 {
      if (num%i == 0) || (num%(i+2) == 0) {
         ret = false
         break
      }
   }

finish:
   return

}

func main() {
   var i uint64 = 1
   var num uint64 = 0
   fmt.Println("The first 100 prime numbers")
   fmt.Printf("\n%-5s\t%-5s","#","Prime")
   fmt.Printf("\n%-5s\t%-5s \n","-----","-----")
   for {
      if i > 100 {
         break
      }
      res, _ := IsPrimeByDiv(num)
      if res {
         fmt.Printf("%5d\t%5d \n",i,num)
         i++
      }
      num++
   }
}
