/*

10-06-21

Si realizzi un predicato Prolog newList(Start, End, L1) che crei una lista di interi L1 contenente i soli valori
della lista Start che sono strettamente maggiori di tutti i valori della lista End. Se non ne esistono o Start è vuota
dovrà restituire la lista vuota. A tal fine si definisca e si utilizzi anche un predicato checkMax(List,N) che data
una lista List e un numero intero N, abbia successo se N è strettamente maggiore di tutti gli elementi della lista
List. Di seguito si riporta qualche esempio di esecuzione Prolog:
?- newList([7,4,8,1],[4,2,5,6],L1).
L1 = [7, 8]
?- newList([7,4,8,5,6],[],L1).
L1 = [7, 4, 8, 5, 6]
?- newList([7,4,8,5,6],[10],L1).
L1 = []
*/

% Caso base.
newList([], _, []).
newList(S, [], S) :- !.
newList([HS|TS], E, [HS|T]) :- checkMax(E, HS), !, newList(TS, E, T).
newList([_|TS], E, T) :- newList(TS, E, T).

checkMax([], _).
checkMax([H|T], N) :- N > H, checkMax(T, N).
