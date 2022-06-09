/*
21-01-2021

Si scriva un predicato PROLOG:
listeSplit(L,B,L1,L2)che, data la lista di numeri interi L, e il numero intero B, produca in uscita due liste L1 e L2
costituite rispettivamente dagli elementi Y di L tali che Y< B in L1 e Y >= B in L2.
Ad esempio:
?- listeSplit([4,2,3,6],4, L1,L2).
L1= [2,3]
L2= [4,6]
*/

listeSplit([], _, [], []).
listeSplit([H|T], B, [H|T1], T2) :- H < B, !, listeSplit(T, B, T1, T2).
listeSplit([H|T], B, T1, [H|T2]) :- listeSplit(T, B, T1, T2).
