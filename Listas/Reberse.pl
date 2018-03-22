% reberse(?Lista, ?ListR). 
% Es cierto cuando ListR unifica con una lista que contiene los mismos elementos de una Lista en orden Inverso.

reberse([],[]).
reberse([C|R], R2):- reberse(R,R1), insertar_final(C,R1,R2).


% insertar_final (E+, +Lista, -R)

% Es cierto cuando R unifica con una lista que contiene los elementos de Lista con el elemento E al final

insertar_final(E,[],[E]).
insertar_final(E,[C|R], [C|Z]):- insertar_final(E, R, Z).

% 
elemento_enesimo(0, [C | R], C).
elemento_enesimo(P, [C | R], E):- P>0, NuevoPos is P-1, elemento_enesimo(NuevoPos, R, E).



% borrar_elem(?E, ?Lista, ?ListaR)
% Es cierto cuando ListaR unifica con una lista que contiene los elementos de Lista pero con las ocurrencias de E eliminadas

borrar_elem(_, [],[]).
borrar_elem(E, [E | Resto], R):-  borrar_elem(E, Resto, R).
borrar_elem(E, [Cabeza | Resto], [Cabeza | R]):- E \= Cabeza, borrar_elem(E, Resto, R).   




% permutacion(?L1, ?L2).
% Es cierto cuando  L1 unifica con una lista que contiene los elementos de L2 en orden distinto.  Por unificacion debo poder obtener todas las posibles ordenacion
permutacion([],[]).
permutacion(R2,[Cabeza | Resto]):- permutacion(R,Resto), insertar(Cabeza, R, R2).

% insertar(E,Lista,R).
% Es cierto cuando R unifica con una lista qye countiene los elementos de lista con e insertado en cualquier posicion. por unificacion de todas las opciones

insertar(E, Lista, [E|Lista]).
insertar(E, [Cabeza|Resto], [Cabeza | R]):-insertar(E, Resto, R).

permutacion2(L) :- append(L1, [E|L2],L), append(L1,L2,L3),
	permutacion2(L4,L3),
	insertar(E,L4,R).