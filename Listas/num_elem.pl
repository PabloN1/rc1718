%num_elem(+Lista, ?Num)
% es cierto cuando Num unifica con el numero de elementos de Lista

num_elem([], 0).
num_elem([_|R], N2):- num_elem(R,N), N2 is N + 1.