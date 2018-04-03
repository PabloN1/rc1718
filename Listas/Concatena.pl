%concatena(+List, +List2, -ListR)

%es cierto cuando ListaR unifica con una lista contiene los elementos de la lista List1 en el mismo orden y seguidos de los elementos de la lista List2 en el mismo orden


concatena([],L1,L1).
concatena([Cabeza | Resto],L2, [Cabeza|R] ):-concatena(Resto,L2, R).