%dec2peano(+Dec, -Peano)
%es cierto cuando peano unifica con el numero natural equivalente a al Decimal Dec
%ejemplo
%dec2peano(3,P)
%P= s(s(s(0)))

dec2peano(0,0).
dec2peano(X,s(Y)):- N is X-1, dec2peano(N,Y).

%dec2peano(3, R) -> R=s(s(s(0)))
%dec2peano(2, R) -> R=s(s(0))