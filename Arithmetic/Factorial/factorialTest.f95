! File:          factorialTest.f95
! Purpose:       Function that calculates the factorial of a given number and a test program
! Obs:           The factorial is calculated in two ways: iterative and recursive
! documentation: https://github.com/JoseCintra/MathAlgorithms
! Language:      Fortran 95
! Author:        José Cintra
! Date:          2020, December
! License:       Unlicense, described in http://unlicense.org

MODULE math
! Mathmathical functions

CONTAINS

   ! Function to calculate the factorial in a iterative way
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

  ! Function to calculate the factorial in a recursive way
  RECURSIVE FUNCTION recFactorial (num) RESULT (res)

    ! Variables
    INTEGER, INTENT(IN) :: num
    INTEGER :: res

    !Calculation
    IF (num <= 1) THEN
       res = 1
    ELSE
       res = recFactorial(num-1) * num
    END IF

  END FUNCTION recFactorial

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
      fact = recFactorial(num)
      WRITE (*, '(a,I0,a,I0)') "The recursive factorial of the number ", num, " is ", fact

   END DO
   PRINT *,""
   WRITE (*, '(a)') "END of execution"

END PROGRAM factorialTest


