%-----------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
%es cierto cuando Menores unifica con una lista que
%contiene los elemenentos de Lista que son menores
%o iguales que Elem y Mayores unifica con una lista
%que contiene los elementos de Lista que son
%mayores que Elem.
%


divide(_,[],[],[]).
divide(E,[ C | Resto ],[ C| ME],MA):-C =< E, divide(E,Resto, ME,MA).
divide(E,[ C | Resto ],ME,[ C | MA ]):-C > E, divide(E,Resto,ME,MA).

ordena_quick([],[]).
ordena_quick([C|Resto], R):- divide(C,Resto,ME,MA),
			   ordena_quick(ME,RMIN),
		    	   ordena_quick(MA,RMAX),
			   append(RMIN,[C|RMAX], R).