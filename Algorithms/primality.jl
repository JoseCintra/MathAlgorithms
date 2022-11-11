#=
   Natural - Arithmetic Library
   Set of mathematical functions involving arithmetic of natural numbers
   Language: Julia

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

=#
module Natural

   #=

      Function name: primality
      Description: Determines whether the given number (num) is prime or not, using the trial division (6k + 1) method
      Input: num -> Number to test (integer)
      Output: ret -> Return value (integer) - 1=Prime, 2=Composite, 0=neither
      Theoretical foundation: https://en.wikipedia.org/wiki/Primality_test
      Date: Nov 2022
      Author: José Cintra (https://github.com/JoseCintra/MathAlgorithms)

   =#
   function primality(num::UInt128)

      i::UInt128 = 5            # Loop start
      lim::UInt128 = isqrt(num) # Loop limit

      if (num <= 1)
         ret = 0
         @goto finish
      elseif (num <= 3)
         ret = 1
         @goto finish
      elseif (num%2 == 0) || (num%3 == 0)
         ret = 2
         @goto finish
      end

      ret = 1
      while i <= lim
         if (num % i == 0) || (num % (i+2) == 0)
            ret = 2
            break
         end
         i += 6
      end

      @label finish
      return ret
   end

   ###################################
   ## Test of the "primality" function

   using Printf
   i::UInt128 = 1
   n::UInt128 = 0
   @printf("Primality of the first 100 natural numbers\n\n")
   @printf("#     Primality\n")
   @printf("----- ----------------------\n")
   for i in (UInt128(0):UInt128(100))
      r = primality(i)
      if r == 0
         @printf "%5i Not prime or composite\n" i
      elseif r == 1
         @printf "%5i Prime\n" i
      else
         @printf "%5i Composite\n" i
      end
   end

end # Module
