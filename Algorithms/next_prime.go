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
   Language: GO
   Date: Spring 2022
   Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms

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

/*

   Function: Determines whether the given number (num) is even or not, using bitwise operation
   Input:
      num - Number to test (integer)
   Output:
      ret: Return value (true or false)
   Theoretical foundation: https://www.codeproject.com/Articles/1005626/Ways-to-Check-whether-the-Given-Integer-is-Even-or
   Language: GO
   Date: Spring 2022
   Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms

*/
func isEven(num uint64) (ret bool) {
   ret = (num & 1) == 0
   return
}

/*

   Function: Given a natural number, find the next prime number greater than it
   Input:
      num - a natural number
   Output:
      ret: Return value - the next prime
      err: Error condition - Overflow
   Date: Spring 2022
   Language: GO
   Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms

*/
func nextPrime(num uint64) (ret uint64, err bool) {

   ret = 0
   var i uint64
   if num <= 1 {
      ret = 2
      goto finish
   }
   if isEven(num) {
      num++
   } else {
      num += 2
   }
   for i = num; i < math.MaxUint64; i += 2 {
      res, _ := IsPrimeByDiv(i)
      if res {
         ret = i
         break
      }

   }
   if ret == 0 {
      err = true // Overflow
   }
finish:
   return
}

func main() {
   var i uint64
   fmt.Println("The first 100 'Next Prime' Numbers")
   fmt.Printf("\n%-5s\t%-5s", "#", "Next")
   fmt.Printf("\n%-5s\t%-5s \n", "-----", "-----")
   for i = 0; i <= 100; i++ {
      res, err := nextPrime(i)
      if err {
         fmt.Println("Number is too large")
      } else {
         fmt.Printf("%5d\t%5d \n", i, res)
      }
   }
}

