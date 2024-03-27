    program OBACT 
    IMPLICIT NONE 
!***** Start of declarations 
    integer :: act, length, nchar 
!***** End of declarations 
    integer :: todo, done, base 
    BASE = 10 
    Todo = 124 
    DONe = 0 
  12  if ( todo /= 0 ) then 
      act = MOD(Todo,BASE) 
      Todo = Todo/BASE 
      if ( act == 1 .or. act == 3 .or. &
                act == 7 .or. act == 5 .or. &
                act == 9 ) then 
      print *, "The number is odd" 
    else if ( act == 2 ) then 
      print *, "The number is 2" 
    ELSE 
      print *,"The number is even" 
      goto 12
    end if 
    DONe = DONe + 1 
    end if 
    print *, DONe 
    read(*,*) 
    RETURN 
END program obact 
