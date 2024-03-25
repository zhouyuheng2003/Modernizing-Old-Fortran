      program OBACT
      IMPLICIT NONE
C***** Start of declarations
      INTEGER act , LENgth , NCHar
C***** End of declarations
      INTEGER Todo , DONe , BASE
      BASE = 10
      Todo = 124
      DONe = 0
  100 IF ( Todo.NE.0 ) THEN
       act = MOD(Todo,BASE)
       Todo = Todo/BASE
       IF ( act.EQ.1 .OR. act.EQ.3 .OR. 
     &        act.EQ.7 .OR. act.EQ.5 .OR. 
     &        act.EQ.9 ) THEN
          print *, "The number is odd" 
c         GOTO 200
       ELSEIF ( act.EQ.2 ) THEN
          print *, "The number is 2"
       ELSE
          print *,"The number is even"
         GOTO 100
       ENDIF
       DONe = DONe + 1
      GOTO 100
      ENDIF
  200 print *, DONe
      read(*,*)
      RETURN
      END