/*
14/09/2017

Date due liste L1 e L2 di uguale lunghezza si definisca un predicato Prolog
faicoppie(L1,L2,L3)
che costruisca una nuova lista L3 di coppie (liste di due elementi) il cui primo appartiene alla lista L1 e il
secondo alla lista L2, scartando da L3 le coppie con tutti e due gli elementi uguali.
?- faicoppie([1,7,3,2,9], [2,2,3,4,5], L3).
L3 = [[1,2], [7,2], [2,4], [9,5]]
*/

faiCoppie([], [], []).
faiCoppie([H|T1], [H|T2], T) :- !, faiCoppie(T1, T2, T).
faiCoppie([H1|T1], [H2|T2], [[H1,H2]|T]) :- faiCoppie(T1, T2, T).
