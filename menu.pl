menu:- write('M  E  N  U'),nl,
	write('1. SUMA DE DOS VALORES'),nl,
	write('2. RESTA DE 2 VALORES'),nl,
	write('3. MULTIPLICACION N*M'),nl,
	write('4. MULTIPLICACION POR MEDIO DE SUMA'),nl,
	write('5. POTENCIA'),nl,
	write('6. FACTORIAL'),nl,
	write('7. PAR O IMPAR'),nl,
	write('8. TERMINAR'),nl,
	(write('Teclea tu opcion: '), read(Op),Op<8,Op>0,eleccion(Op));menu.

eleccion(Op):- Op==1->write('SUMA'),nl,
					write('Introduce valor 1'),read(Uno),
					write('Introduce valor 2'),read(Dos),
					suma(Uno,Dos,C), write(C);
		Op==2->write('RESTA'),nl,
					write('Introduce valor 1'),read(Uno),
					write('Introduce valor 2'),read(Dos),
					resta(Uno,Dos,C), write(C);
		Op==3->write('MULTIPLICACION N*M'),nl,
					write('Introduce valor 1'),read(Uno),
					write('Introduce valor 2'),read(Dos),
					C is Uno * Dos, write(C);
		Op==4->write('MULTIPLICACION SUMA'),nl,
					write('Introduce valor 1'),read(Uno),
					write('Introduce valor 2'),read(Dos),
					mul(Uno,Dos,C),write(C);
		Op==5->write('POTENCIA'),nl,
					write('Introduce valor 1'),read(Uno),
					write('Introduce valor 2'),read(Dos),	
					potencia(Uno,Dos,C),write(C);				
		Op==6->write('FACTORIAL'),nl,
					write('Introduce valor 1'),read(Uno),
					factorial(Uno,C),write(C);
		Op==7->write('PAR O IMPAR'),nl,
					write('Introduce valor 1'),read(Uno),
					par(Uno);					
		Op==8->write('FINALIZADO').


	resta(X,0,X):-X=\=0.
	resta(X,Y,Res):-Y>0, Y1 is Y-1,resta(X,Y1,Res1),Res is Res1-1.

	suma(X,0,X):-X=\=0.
	suma(X,Y,Res):-Y>0, Y1 is Y-1, suma(X,Y1,Res1),Res is Res1+1.

	mul(X,0,0):-X=\=0.
	mul(X,Y,Res):-Y=0,Res=0;Y>0,Y1 is Y-1, mul(X,Y1,Res1), Res is X+Res1.

	potencia(N,0,1):-N=\=0.
	potencia(N,M,Res):-M>0,M1 is M-1,potencia(N,M1,Res1),Res is N*Res1.

	factorial(0,1).
	factorial(N,R):-N>0,N1 is N-1, factorial(N1,R1),R is N*R1.

	par(0).
	par(X):-(X=\=0, 0 is X mod 2,write("El numero es par"),nl);write("El numero es impar"), nl.



		
					