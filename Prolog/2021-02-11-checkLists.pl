/*
11-02-2021

Definire un programma Prolog checkLists(List1,N) in cui List1 è una lista di liste di valori interi e che risulti
vero se List1 contiene tutte liste che NON contengono il valore N. checkLists risulta sempre vero se la lista
List1 è vuota. Si abbia cura di riportare la definizione di eventuali predicati ausiliari utilizzati.
Esempi:
?- checkLists ([[7,4],[6],[]], 3)
yes
?- checkLists ([], 3)
yes
?- checkLists ([[7,4],[2],[]], 2).
No
*/

% Caso base
checkList([], _).
checkList([H|T], N) :- checkElement(H, N), checkList(T, N).

% Abbiamo una lista di liste
% Creo un predicato ausiliario checkElement che analizzi ciascuna lista
checkElement([], _).
checkElement([H|T], N) :- H \= N, checkElement(T, N).
