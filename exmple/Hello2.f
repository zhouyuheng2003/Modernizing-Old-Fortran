      program fibonacci
      implicit none
      integer :: i, fib(20) ,x

c     初始化前两个斐波那契数字
      fib(1) = 0
      fib(2) = 1
      x = 3

      do i = 3, 20
         fib(i) = fib(i-1) + fib(i-2)
      end do
      
c     打印斐波那契数列的前20个数字
      print *, "The numbers are:"
      do i = 1, 20
         print *, fib(i)
      end do
      

      read(*,*)

      end program fibonacci
