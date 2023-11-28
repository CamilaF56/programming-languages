fatorial(1, 1).
fatorial(N, F) :- N > 0, N1 is N-1, fatorial(N1,F1), F is N*F1.

somatorio(1,1).
somatorio(X,S) :- X>0, Xr is X-1, somatorio(Xr,R), S is R+X.

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N, R) :- N>0, N1 is N-1, N2 is N-2, fibonacci(N1, R1), fibonacci(N2,R2), R is R1+R2.

somatorioPares(0,0).
somatorioPares(N,R) :- N>0, N mod 2=:=0, N1 is N-2,somatorioPares(N1,R1), R is N+R1.
somatorioPares(N,R) :- N>0, N mod 2\=0, N1 is N-1, somatorioPares(N1,R1), R is N+R1.
