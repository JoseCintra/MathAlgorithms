/*

   Set of mathematical functions involving arithmetic and number theory

   This is free and unencumbered software released into the public domain.

   Anyone is free to copy, modify, publish, use, compile, sell, or
   distribute this software, either in source code form or as a compiled
   binary, for any purpose, commercial or non-commercial, and by any
   means.

   In jurisdictions that recognize copyright laws, the author or authors
   of this software dedicate any and all copyright interest in the
   software to the public domain. We make this dedication for the benefit
   of the public at large and to the detriment of our heirs and
   successors. We intend this dedication to be an overt act of
   relinquishment in perpetuity of all present and future rights to this
   software under copyright law.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
   EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
   IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
   OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
   ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
   OTHER DEALINGS IN THE SOFTWARE.

   For more information, please refer to <http://unlicense.org/>

*/

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
   ret = ((num & 1) == 0)
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

/*
Function: Given a natural number N, calculate all its prime factors
Input:

   num - Number to test (integer)

Output:

   ret: Return value - a map with the prime factors and your exponents
   err: Error condition - NOT USED. Only for compatibility reasons

Theoretical foundation: https://brilliant.org/wiki/prime-factorization/
Language: GO
Date: Spring 2022
Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms
*/
func PrimeFactors(num uint64) (ret map[uint64]uint64, err bool) {
   var div uint64 = 0 // Prime factor
   var i uint64 = 1   // Loop Control
   var exp uint64 = 0 // Exponent of fator or quantity of each factor
   ret = make(map[uint64]uint64)
   err = false

   isPrime, _ := IsPrimeByDiv(num)
   if isPrime {
      ret[num] = 1
      goto finish
   }
   if num <= 1 {
      err = true
      goto finish
   }

   for num > 1 {
      div, _ = nextPrime(i)
      exp = 0
      for num%div == 0 {
         exp++
         num = num / div
      }

      if exp != 0 {
         ret[div] = exp
      }
      i++
   }
finish:
   return
}

/*
Function: Calculates the number of divisors of a given number by prime factorization
Input:

   num - Number to test (integer)

Output:

   ret: Return value representing the number o divisors
   err: Error condition - NOT USED. Only for compatibility reasons

Theoretical foundation: https://en.wikipedia.org/wiki/Divisor
Language: GO
Date: Spring 2022
Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms
*/
func getNumDivs(num uint64) (ret uint64, err bool) {
   pf, _ := PrimeFactors(num) // Prime Factors of num
   ret = 1
   for _, exp := range pf {
      ret *= (exp + 1)
   }
   return
}

/*
Function: given 2 or more numbers, calculate the LCM (Least Common Multiple) of those numbers
Input:
   num - Numbers to calculate (array of integers)
Output:
   lcm: Return value - An integer representing the LCM of the input numbers
   err: Error condition
Theoretical foundation: https://en.wikipedia.org/wiki/Least_common_multiple
Language: GO
Date: Spring 2022
Author: José Cintra - https://github.com/JoseCintra/MathAlgorithms
*/
func Lcm(nums []uint64) (ret uint64, err bool) {
   err = false
   ret = 1                      // return value (LCM)
   l := uint64(len(nums))       // Number of input parameters in the array
   f := make(map[uint64]uint64) // Map with prime factors of the parameters (with the major exponents)
   var i uint64                 // for loop
   var k uint64                 // Map key
   var v uint64                 // Map value
   if len(nums) < 2 {
      err = true
      goto finish
   }
   for i = 0; i < l; i++ {
      aux, _ := PrimeFactors(nums[i]) // Prime factor for this parameter
      for k, v = range aux {
         nv, isPresent := f[k] // Test if is a common factor
         if !isPresent {
            f[k] = v
         } else if nv < v {
            f[k] = v
         }
      }
   }
   // LCM calc
   for k, v = range f {
      ret *= (uint64(math.Pow(float64(k), float64(v))))
   }
finish:
   return
}

func main() {
   fmt.Println("Least Common Multiple")
   fmt.Println("")
   var a = []uint64{50, 25, 10, 5} // CHANGE THIS TO TEST OTHER DATA
   lcm, _ := Lcm(a)
   fmt.Println("Numbers: ", a)
   fmt.Println("LCM = ", lcm)
}
