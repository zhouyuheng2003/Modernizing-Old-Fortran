    program fibonacci 
    implicit none 
    integer :: i, fib(20) ,x 
!     Initialize the first two Fibonacci numbers 
    fib(1) = 0 
    fib(2) = 1 
    x = 3 
 
    do i = 3, 20 
      fib(i) = fib(i-1) + fib(i-2) 
      END do 
   if(fib(2).eq.1)then
        fib(2)=0
        goto 33
    endif
    
!     Print the first 20 digits of the Fibonacci sequence 
    print *, "The numbers &
              are:" 
    do i = 1, 20 
      print *, fib(i) 
    end do 
 
 
    read(*,*) 
 
    end program fibonacci 
