professor(maily). % fato, professor->predicado e maily->constante, formula atomica indivisivel
professor(maria). % fato, professor->predicado e maria->constante, formula atomica indivisivel

ensina(maily, prog1). % fato, ensina->predicado, maily e prog1 ->constantes, formula atomica indivisivel
ensina(maria, calc1). % fato, ensina->predicado, maria e calc1 ->constantes, formula atomica indivisivel

disciplina(calc1). % fato, disciplina->predicado e calc1->constante, formula atomica indivisivel
disciplina(prog1). % fato, disciplina->predicado e prog1->constante, formula atomica indivisivel

ensinaa(X, computação) :- professor(X), ensina(X, prog1). % regra ou lei
ensinaa(X, matematica) :- professor(X), ensina(X, calc1). % regra ou lei

simpatico(X) :- professor(X), ensinaa(X, computação). % regra ou lei
