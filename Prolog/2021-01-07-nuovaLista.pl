/*
07/01/21

Si scriva un predicato Prolog nuovaLista(L, Start, End)che, dati due valori interi Start ed End, restituisca
una lista L contenente i valori interi a partire da Start fino a End. Se Start > End dovrà restituire la lista vuota.
Ad esempio il goal:
?- nuovaLista(L,3,6) produrrà la risposta: L=[3,4,5,6].
?- nuovaLista(L,6,3) produrrà la risposta: L1=[].
*/

% Caso base, (cut necessario per evitare di finire nel secondo caso, una volta raggiunta
% la condizione base, ovvero S > E).
nuovaLista([], S, E) :- S > E, !.
nuovaLista([S|T], S, E) :- S1 is S + 1, nuovaLista(T, S1, E).
