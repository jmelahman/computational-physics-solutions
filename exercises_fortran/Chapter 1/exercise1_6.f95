PROGRAM EXERCISE1_6
!   USES THE NEWTON RAPHSON METHOD TO FIND THE ROOT OF TANH(X)
IMPLICIT NONE
    REAL :: X,TOLX
    TOLX = 1.E-06               !TOLERANCE FOR FINDING ROOT
    X = 2.                      !INTITIAL GUESS
    CALL NEWTONRAPHSON(X,TOLX)
END PROGRAM

SUBROUTINE NEWTONRAPHSON(X,TOLX)
IMPLICIT NONE
    REAL :: X,TOLX,FUNC,FPRIME
    INTEGER :: I

    I = 0
10  CONTINUE
    I = I+1
    X = X-FUNC(X)/FPRIME(X)
    PRINT *,'X',X
    PRINT*,FUNC(X)
    IF (ABS(FUNC(X)) > TOLX) GOTO 10
    PRINT *,'NUMBER OF ITERATIONS',I
    PRINT *,"THE ROOT IS APPROIXATELY",X
    RETURN
END SUBROUTINE NEWTONRAPHSON

FUNCTION FUNC(X)
    IMPLICIT NONE
    REAL :: FUNC,X
    FUNC = TAN(X)
    RETURN
END FUNCTION FUNC

FUNCTION FPRIME(X)
    IMPLICIT NONE
    REAL :: FPRIME,X
    FPRIME = (4*COS(X)*COS(X))/(1+COS(2*X))**2
    RETURN
END FUNCTION FPRIME