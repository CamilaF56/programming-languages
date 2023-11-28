homem(jim).
homem(tom).
homem(bob).

mulher(pamela).
mulher(patricia).
mulher(ana).

pais(pamela, bob).
pais(tom, bob).
pais(tom, liz).
pais(bob, ana).
pais(bob, patricia).
pais(patricia, jim).

pai(X, Y) :- pais(X, Y), homem(X).

mae(X, Y) :- pais(X, Y), mulher(X).

filho(X, Y) :- pais(Y, X).

avo(X, Z) :- pai(X, Y), mae(Y, Z).
avo(X, Z) :- pai(X, Y), pai(Y, Z).
avo(X, Z) :- mae(X, Y), pai(Y, Z).
avo(X, Z) :- mae(X, Y), mae(Y, Z).

irma(X, Y) :- mulher(X), pais(Z, X), pais(Z, Y), X\=Y.

tem_filhos(X) :- pais(X, _).

tia(X, Y) :- mulher(X), irma(X, _), mae(_, Y); pai(_, Y).

dois_filhos(X) :- setof(Y, pais(X, Y), Filhos), length(Filhos, 2).


