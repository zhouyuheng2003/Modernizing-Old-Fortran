C equiv.f --
C     Do not use .EQ. to compare two logicals
C
      PROGRAM EQUIV
      integer A, B

      A = 1
      B = 1

      CALL CHECK( A, B )

      A = 0
      B = 1

      CALL CHECK( A, B )
      END

      SUBROUTINE CHECK( A, B )
      integer A, B

      WRITE(*,*) 'A = ', A
      WRITE(*,*) 'B = ', B
      IF ( A .EQ. B ) THEN
          WRITE(*,*) 'A and B are equal'
      ELSE
          WRITE(*,*) 'A and B are NOT equal'
      ENDIF
      END