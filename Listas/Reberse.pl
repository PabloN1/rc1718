% reberse(?Lista, ?ListR). 
% Es cierto cuando ListR unifica con una lista que contiene los mismos elementos de una Lista en orden Inverso.

reberse([],[]).
reberse([C|R], R2):- reberse(R,R1), insertar_final(C,R1,R2).


% insertar_final (E+, +Lista, -R)

% Es cierto cuando R unifica con una lista que contiene los elementos de Lista con el elemento E al final

insertar_final(E,[],[E]).
insertar_final(E,[C|R], [C|Z]):- insertar_final(E, R, Z).

% 
elemento_enesimo(1,[],[]).
