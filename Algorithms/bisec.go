/*

Name:      root_bisection.go
Purpose:   Tries to find the root of a function at a certain interval by the bisection method
Reference: https://en.wikipedia.org/wiki/Bisection_method
Language:  GO
Author:    José Cintra (https://github.com/JoseCintra/MathAlgorithms)
Date:      2023/07/03
To do:     Data input and output is not validated.
Warning:   This software is designed for educational purposes and is made available as "as it is"without any guarantee of any kind.

*/

package main

import (
   "fmt"
   "math"
)

/*
   The recursive function 'Bisection' receives 4 parameters and returns two values

   Parameters:
   f: Is the function we want to find root of
   l: Left bound of the interval
   r: Right bound of the interval
   t: Is the tolerance

   Returned values:
   1) Approximation of root in interval [l,r]
   2) Error (true or false) indicating an invalid interval
*/

func Bisection(f func(float64) float64, l, r, t float64) (float64, bool) {

   m := (l + r) / 2.0
   if f(l)*f(r) > 0 {
      return 0, true
   } else if math.Abs(f(m)) < t {
      return m, false
   } else if f(l)*f(m) > 0 {
      return Bisection(f, m, r, t)
   } else {
      return Bisection(f, l, m, t)
   }

}

func main() {
   f := func(x float64) float64 { // Quadratic function x^2 - 2
      return (math.Pow(x, 2) - 2)
   }
   r, e := Bisection(f, 0, 2, 0.01)
   if e {
      fmt.Println("The interval [l, r] informed does not contain a root")
   } else {
      fmt.Println("Root ≃ ", r)
   }
}
