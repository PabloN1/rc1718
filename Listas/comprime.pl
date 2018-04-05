%comprime(+Lista, -R)
%
%Es cierto cuando R unifica con una lista que contiene los elementos de lista en foirmnato comprimido
%EJEMPLO: [a,a,a,b,b,c] -> [(a,3),(b,2), (c,1)]

comprime([],[]).
comprime([E],[(E,1)]).
comprime([Ca, Ca|Resto],[(Ca,N2)|R]):-
comprime([Ca|Resto], ([(Ca,N)|R]),
N2 is N+1.

comprime([Ca1, Ca2|Resto],[(Ca1,1)|R]):-
Ca1\=Ca2,
comprime([Ca2|Resto], R).