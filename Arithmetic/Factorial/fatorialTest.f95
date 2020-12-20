! File: factorialTest.f95
! Purpose: Function that calculates the factorial of a given number and a test program
! documentation: https://github.com/JoseCintra/MathAlgorithms
! Language: Fortran 95
! Author: José Cintra
! Date: 2020, December
! License: Unlicense, described in http://unlicense.org

MODULE math

CONTAINS

   ! Function to calculate the factorial
   INTEGER FUNCTION factorial(num)

      ! Variables
      IMPLICIT NONE
      INTEGER, INTENT(IN) :: num
      INTEGER :: i

      !Calculation
      factorial = 1
      DO i = 1,num
        factorial = factorial * i
      END DO
      RETURN

   END FUNCTION factorial

END MODULE


PROGRAM factorialTest

   USE math

   ! Variables
   IMPLICIT NONE
   INTEGER :: num  ! User's number to calculate factorial
   INTEGER :: fact ! Calculated factorial
   WRITE (*,'(a)') "Factorial calculation"

   ! Main Loop
   DO
      ! Data entry
      PRINT *,""
      WRITE (*,'(a)')"Enter a positive integer to calculate factorial or a negative number to exit"
      WRITE (*, '(a)', advance='no') '--> '
      read *, num
      IF (NUM < 0) THEN
        EXIT
      END IF

      ! Output
      fact = factorial(num)
      WRITE (*, '(a,I0,a,I0)') "The factorial of the number ", num, " is ", fact
   END DO
   PRINT *,""
   WRITE (*, '(a)') "END of execution"

END PROGRAM factorialTest


