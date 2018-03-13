% producto(?X,?Y,?Z)
% esto es cierto cuando  Z unifica con el producto de X por Y.

producto(X, 0, 0).
producto(X,s(Y),s(Z)):- N is Y-1, producto(X,N,Z).