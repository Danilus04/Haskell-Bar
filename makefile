all:
	@clear
	@ghc hello.hs
	@./hello
	@rm hello
	@rm hello.hi
	@rm hello.o
ex1:
	@clear
	@ghc ex1.hs
	@./ex1
	@rm ex1
	@rm ex1.hi
	@rm ex1.o
ex2:
	@clear
	@ghc ex2.hs
	@./ex2
	@rm ex2
	@rm ex2.hi
	@rm ex2.o
ex3:
	@clear
	@ghc ex3.hs
	@./ex3
	@rm ex3
	@rm ex3.hi
	@rm ex3.o	
ex4:
	@clear
	@ghc ex4.hs
	@./ex4
	@rm ex4
	@rm ex4.hi
	@rm ex4.o	
ex5:
	@clear
	@ghc ex5.hs
	@./ex5
	@rm ex5
	@rm ex5.hi
	@rm ex5.o	
ex6:
	@clear
	@ghc ex6.hs
	@./ex6
	@rm ex6
	@rm ex6.hi
	@rm ex6.o		
ex7:
	@clear
	@ghc ex7.hs
	@./ex7
	@rm ex7
	@rm ex7.hi
	@rm ex7.o		
ex8:
	@clear
	@ghc ex8.hs
	@./ex8
	@rm ex8
	@rm ex8.hi
	@rm ex8.o			
quicksort:
	@clear
	@ghc quicksort.hs
	@./quicksort
	@rm quicksort
	@rm quicksort.hi
	@rm quicksort.o			
corte:
	@clear
	@ghc CorteDeEstoque2.hs
	time ./CorteDeEstoque2
	@rm CorteDeEstoque2
	@rm CorteDeEstoque2.hi
	@rm CorteDeEstoque2.o			