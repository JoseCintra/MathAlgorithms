! Math Algorithms
!
! Purpose:       Program that calculates the roots of polynomial equations up to the second degree
! Language:      Fortran 95
! Author:        José Cintra
! Year:          2020
! Web Site:      https://github.com/JoseCintra/MathAlgorithms
! License:       Unlicense, described in http://unlicense.org
! Online demo:   https://onlinegdb.com/S1SvELfLd

PROGRAM Equation

   ! Variables
   IMPLICIT NONE
   REAL :: a,b,c  ! Coefficients of the equation
   REAL :: x1,x2  ! Roots of the equation
   REAL :: delta  ! For Bhaskara formula

   ! Data entry
   ! Change these Coefficients to test other input values
   a = 3
   b = 4
   c = 0

   ! Calculations
   PRINT *,""
   WRITE (*,'(a)') "The roots of that equation are:"
   IF (a == 0 .AND. b == 0) THEN
     WRITE (*,'(a)') "Invalid coefficients."
   ELSE IF (a == 0) THEN ! First degree equation
      x1 = -c/b
      PRINT *, x1
   ELSE ! Second degree equation
      delta = b*b -4*a*c
      IF (delta < 0) THEN
        WRITE (*,'(a)') "This equation has no real roots."
      ELSE
        x1 = (-b + sqrt(delta)) / (2*a)
        x2 = (-b - sqrt(delta)) / (2*a)
        PRINT *, x1
        PRINT *, x2
      END IF
   END IF

   ! END
   PRINT *,""
   WRITE (*, '(a)') "END of execution"

END PROGRAM Equation


