/*
16/06/2017

Data una lista L di numeri si definisca un predicato Prolog ordered(L) in grado di rispondere con
successo se la lista L è ordinata in modo strettamente crescente.
Esempio:

?- ordered([1,2,5]).
Yes
?- ordered[9,2,5]).
No
?- ordered[2,2,5]).
No
*/

% Il cut è necessario, in quanto quando la lista contiene un solo elemento, e prosegue con anche il secondo predicato.

ordered([_]) :- !.
ordered([H,S|T]) :- H < S, ordered(T).
