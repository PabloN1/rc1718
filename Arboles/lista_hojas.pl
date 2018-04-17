%lista_hojas(+A,-L)
%es cierto cuando L unifica con una lista que contiene las etiquetas de las hojas del arbol A
%
%


lista_hojas(nil,[]).
lista_hojas(a(E,nil,nil),[E]).
lista_hojas(a(E, nil,HD), RD):-
	HD \= nil,
	lista_hojas(HD,RD).
lista_hojas(a(E, HI,nil), RI):-
	HD \= nil,
	lista_hojas(HI,RI).
lista_hojas(a(E,HI,HD), R):-
	HI \= nil, HD \= nil,
	lista_hojas(HI,RI),
	lista_hojas(HD,RD),
	append(RI,RD,R).
	
	
	arbol(
		a(a,a(b,a(c,nil,nil),nil),a(d,nil,nil))
	).