% suma(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la suma de X en Y en la aritmetica de Peano.

suma(0,Y,Y).

suma(s(X),Y,s(Z)):- suma(X,Y,Z).
