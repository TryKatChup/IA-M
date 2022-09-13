/*
07/07/2022
Si scriva in Prolog il predicato dispariList(L,S), che risulta vero quando S rappresenta la lista degli elementi di L in posizione dispari (prima, terza ecc.)
Esempi
?- dispariList([1,5,2,7,9,0],X).
X = [1, 2, 9]
?- dispariList([],X).
X = []
?- dispariList([1],X).
X = [1]
?- dispariList([1,2,3],[1,3]).
true
?- dispariList([1,2,3],[1]).
false
*/

dispariList([],[]).
dispariList([X],[X]).
dispariList([X, _ | T], [X | S]) :- dispariList(T, S).
