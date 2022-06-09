/*
14/06/2019

Si definisca in Prolog un predicato sum(L,V) che, data una lista di interi L, controlla se la somma di tutti i suoi
elementi maggiori o uguali a 0 è uguale a V. Se la lista è vuota il valore di V sarà 0. Ad esempio per il goal:
?-sum([6,7,2,0,-4], 15).
Yes
perché la somma degli elementi maggiori di 0, ovvero 6+7+2, è pari a 15.
Altri esempi:
?-sum([6,7,2,0,-4],Yes V=15
?-sum([6,7,2], 12).
No
?-sum([], 0).
Yes
*/

% Caso base
sum([], 0).

% definisco una nuova variabile V1.
sum([H|T], V) :- H >= 0, !, V1 is V - H, sum(T, V1).
sum([_|T], V) :- sum(T, V).
