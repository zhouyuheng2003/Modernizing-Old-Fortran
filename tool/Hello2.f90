    PROGRAM FIBONACCI 
    IMPLICIT NONE 
    integer :: I, FIB(20), X = 300 
    FIB(1) = 0 
    FIB(2) = 1 
    DO I = 3, 20 
      FIB(I) = FIB(I-1) + FIB(I-2) 
    end do 
    PRINT *, 'The numbers &
              are:' 
    DO I = 1, 20 
      PRINT *, FIB(I) 
    end do 
    DO WHILE ( x /= 0 ) 
      X = X/10
    end do 
    PRINT *, 'X should be zero:',X 
    READ(*,*) 
    END PROGRAM FIBONACCI 
