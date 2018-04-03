%ordena_burbuja(+Lista, -ListaR)
%
%es cierto cuando ListaR unifica con una lista que contiene los mimso elementos que Listas ordenados de menor a mayor

ordena_burbuja(Lista, Lista):- ordenada(Lista).
ordena_burbuja(Lista, RT):-
  append(Ini,[E1,E2|Fin], Lista),
  E1>E2,
  append(Ini, [E2,E1|Fin], R),
  ordena_burbuja(R, RT).

%ordenada(+Lista)
%es cierto cuando Lista unifica con una lista que contiene sus elementos ordemadpor de menor a mayor
%



ordenada([]).
ordenada([_]).
ordenada([Cab1,Cab2|Resto]):- Cab1 =< Cab2, ordenada([Cab2| Resto]).