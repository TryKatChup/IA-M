/*
9/07/20
Si scriva un predicato PROLOG:
newList(P, N, L1)
che data una lista P di interi e un intero N, dia in uscita una nuova lista L1 con tutti gli elementi uguali a P
tranne l’elemento di P in posizione N che dovrà essere rimosso dalla lista P.
N è supposto minore o uguale della lunghezza della lista P
Se N è <=0, o P è vuota, P rimarrà invariata.
Ad esempio:
?- newList([3,2,3,1], 2, X).
X = [3, 3, 1]
?- newList([3,2,3,1], 0, X).
X = [3, 2, 3, 1]
*/

% Caso base
newList([], _, []).

% Caso in cui ho N =< 0: considero l'intera lista di elementi
newList(L1, N, L1) :- N =< 0, !.
% Caso N = 1: ricopio la coda, scartando la testa, dato che corrisponde
% all'indice specificato da N.
newList([_|T1], 1, T1) :- !.
newList([H1|T1], N, [H1|T2]) :- POS is N - 1, newList(T1, POS, T2).
