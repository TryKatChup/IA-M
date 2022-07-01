/*
26/01/2017

Si definisca un predicato Prolog listPosition(L,X,N)che, data una lista L e un elemento X,
restituisce la posizione N dell''elemento che si sta cercando al suo interno a partire dall’ultima
posizione. Si abbia cura di definire anche eventuali predicati di supporto. Esempio:
?- listPosition([a, b, c, d, e], a, P).
yes P is 5
?- listPosition([a, b, c], d, P).
no
*/


listPosition([H|T], H, P) :- !, countElements(T, X), P is X + 1.
listPosition([_|T], E, P) :- listPosition(T, E, P).

countElements([], 0).

% NB occorre fare il conteggio dopo la chiamata ricorsiva, in quanto la prima volta non si ha noto il valore di Y, se non dopo la sua dichiarazione in countElements. Anche il valore di X la prima volta non è noto.

countElements([_|T], X) :- countElements(T, Y), X is Y + 1.
