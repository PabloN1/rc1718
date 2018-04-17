%cuenta_internos(+A,-R).
%Es cierto cuando R unifica con el numero de nodos internos del arbol A 
% (todos los nodos menos las hojas)

cuenta_internos(A,):-
	cuenta_nodos(A,NumNodos),
	cuenta_nodos(A,NumHojas),
	R is NumNodos - NumHojas.