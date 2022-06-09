/* 
11-07-2019

Definire un programma Prolog eachLists(List1,Min,Max) in cui List1 è una lista di liste di valori interi
e che risulti vero se List1 contiene tutte liste che rispettano questa proprietà:
I valori dei loro elementi sono compresi fra Min e Max (Min e Max inclusi, dove Min<=Max). La proprietà è
sempre garantita se la lista è vuota.
eachLists risulta sempre vero se la lista List1 è vuota.
Esempi:
?- eachLists([[7,4],[6],[]], 3, 8)
yes
?- eachLists([], 3, 8)
yes
?- eachLists([[7,4],[2],[]], 3, 8).
No
*/

eachList([], MIN, MAX).
eachList([H|T], MIN, MAX) :- eachElement(H, MIN, MAX), eachList(T, MIN, MAX).

% Dato che ho una lista di liste definisco una funzione ausiliaria eachElement
% che considera ciascuna lista e confronti se ciascun elemento rientra nel range specificato.

% Caso base
eachElement([], MIN, MAX).
eachElement([H|T], MIN, MAX) :- H >= MIN, H =< MAX, eachElement(T, MIN, MAX).
% Non metto alcuna condizione alternativa, poiché la condizione deve fallire.
