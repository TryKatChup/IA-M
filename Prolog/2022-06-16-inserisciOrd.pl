/*
16/06/2022

Si scriva in Prolog il predicato inserisciOrd(N,L1,L2), che dato il numero intero N e una lista ordinata L1
(in modo crescente, eventualmente vuota) di numeri interi, restituisca in L2 la lista ordinata ottenuta
inserendo N in L1. Esempio:
?- inserisciOrd(3, [1,2,5], X).
X = [1, 2, 3, 5]
?- inserisciOrd(3, [], X).
X = [3]
*/

inserisciOrd(N, [], [N]).
inserisciOrd(N, [H|T], [N,H|T]) :- N =< H, !.
inserisciOrd(N, [H|T], [H|T1]) :- inserisciOrd(N, T, T1).
