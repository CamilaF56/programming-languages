professor(maily).
professor(andre).

aluno(eduardo).
aluno(janaina).
aluno(nadianne).
aluno(joao).
aluno(maria).
aluno(jose).
aluno(ana).

materia(linguagens).
materia(prog1).
materia(arquitetura).
materia(sistemas).

professorDe(maily, linguagens).
professorDe(maily, prog1).
professorDe(andre, arquitetura).
professorDe(andre, sistemas).

alunoDe(eduardo, linguagens).
alunoDe(janaina, linguagens).
alunoDe(nadianne, linguagens).
alunoDe(joao, prog1).
alunoDe(jose, arquitetura).
alunoDe(ana, prog1).
alunoDe(maria, prog1).


colegas(X, Y) :- aluno(X), aluno(Y), alunoDe(X, linguagens), alunoDe(Y, linguagens), X\=Y.
colegas(X, Y) :- aluno(X), aluno(Y), alunoDe(X, prog1), alunoDe(Y, prog1), X\=Y.
colegas(X, Y) :- aluno(X), aluno(Y), alunoDe(X, arquitetura), alunoDe(Y, arquitetura), X\=Y.
colegas(X, Y) :- aluno(X), aluno(Y), alunoDe(X, sistemas), alunoDe(Y, sistemas), X\=Y.


alunoDeProf(X, Y) :- aluno(X), professor(Y), alunoDe(X, linguagens), professorDe(Y,linguagens).
alunoDeProf(X, Y) :- aluno(X), professor(Y), alunoDe(X, prog1), professorDe(Y, prog1).
alunoDeProf(X, Y) :- aluno(X), professor(Y), alunoDe(X, arquitetura), professorDe(Y, arquitetura).
alunoDeProf(X, Y) :- aluno(X), professor(Y), alunoDe(X, sistemas), professorDe(Y, sistemas).
