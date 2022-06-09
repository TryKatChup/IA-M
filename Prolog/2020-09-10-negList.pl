/*
10-09-2020

Si scriva un predicato PROLOG:
negList(P,L)
che data una lista P di liste di interi, non vuote e contenenti ciascuna un (solo) elemento negativo e zero o più positivi,
crei una nuova lista L contenente come elementi tali elementi negativi. Se la lista P è vuota anche L risulterà vuota.
Ad esempio:
?- negList([[3,-4,3,1], [-2,2], [-1]], L).
L = [-4, -2, 1]
?- negList([],L).
L = []
*/

% Caso base
negList([], []).
negList([H1|T1], [N|T2]) :- checkNeg(H1, N), negList(T1, T2).

% Dato che ho lista di liste creo predicato ausiliario checkNeg
% che controllerà se un numero è negativo e come uscita avrà tal numero negativo.
% Il secondo argomento è un numero, che corrisponderà al negativo
% da aggiungere alla lista risultato in testa.

checkNeg([], _).

% Non ci interessa la coda, poiché appena trovo il numero negativo che è
% uno solo, avrò come lista da analizzare la lista vuota
% (dato che non vorrò realizzare il restante della lista).
checkNeg([H1|_], H1) :- H1 < 0, !, checkNeg([], H1).

% Caso 2: non ho testa negativa
checkNeg([_|T1], N) :- checkNeg(T1, N).
