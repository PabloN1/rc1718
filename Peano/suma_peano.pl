% suma(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la suma de X en Y en la aritmetica de Peano.

suma(0,Y,Y).

suma(s(X),Y,s(Z)):- suma(X,Y,Z).

% producto(?X,?Y,?Z)
% esto es cierto cuando  Z unifica con el producto de X por Y.

producto(X, 0, 0).
producto(X,s(Y), Z2):- suma(Z,X,Z2),producto(X,Y,Z).

