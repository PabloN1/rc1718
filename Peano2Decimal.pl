

peano2dec(0,0).
peano2dec(s(X),Y):- peano2dec(X,N), Y is N+1.