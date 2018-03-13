%resta(?X,?Y,?Z)
%Es cierto cuando Z unifica con la resta de X menos Y en Aritmetica de Peano. X tiene que ser mayor que Y

%Principio de Inducción!
% P(no)
% P(n-1) -> P(n)

resta(X,0,X)
resta(X,s(Y),s(Z)):- resta(X,Y,Z)