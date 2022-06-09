% 23/01/20
/*
Si consideri una lista L formata, a sua volta, da liste di numeri interi. Scrivere un programma PROLOG
cresceSum(L)che, data la lista di liste L, abbia successo se la somma degli elementi di ciascuna lista di L forma un
ordinamento strettamente crescente.
Ad esempio alla query:
?- cresceSum([[1,5],[1,7]])
la risposta sarà:
Yes
in quanto la somma degli elementi della prima lista [1,5] è 6 e la somma degli elementi della seconda lista [1,7] è 8 e
6< 8.
Mentre alla query:
?- cresceSum([[1,5],[1,3]])
la risposta sarà:
No
in quanto la somma degli elementi della prima lista [1,5] è 6 mentre la somma degli elementi della seconda lista [1,3]
è 4 e 6 > 4.
*/
% Caso base: lista vuota
cresceSum([]).
% Prendo la somma degli elementi della prima lista, prendo la somma degli elementi
% della seconda lista e confronto il loro risultato.
% NB quando si effettua il confronto occorre effettuare lo scorrimento verso destra di una lista alla volta
% se avessimo messo solo cresceSum(T) avremo fatto un confronto delle somma a coppia.

cresceSum([H1,H2|T]) :- sum(H1,S1), sum(H2,S2), S2 > S1, !,  cresceSum([H2|T]).

% Predicato ausiliario che prende solo una lista e ricava una somma.
sum([], 0).
sum([H|T], V) = SUM is H + V, sum(T,SUM).

