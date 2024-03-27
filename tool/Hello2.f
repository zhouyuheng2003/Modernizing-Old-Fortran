      PROGRAM FIBONACCI
      IMPLICIT NONE
      INTEGER I, FIB(20), X
      FIB(1) = 0
      FIB(2) = 1
      X = 300
      DO I = 3, 20
 100   FIB(I) = FIB(I-1) + FIB(I-2)
      ENDDO
      PRINT *, 'The numbers 
     &are:'
      DO I = 1, 20
         PRINT *, FIB(I)
      ENDDO
      IF ( X.NE.0 ) THEN
         X = X/10
         GOTO 100
      END IF
      PRINT *, 'X should be zero:',X
      READ(*,*)
      END PROGRAM FIBONACCI
