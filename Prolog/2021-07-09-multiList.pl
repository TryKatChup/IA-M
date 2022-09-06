/*
09/07/2021

Si realizzi un predicato Prolog multiList(L,L1,N) che restituisca una nuova lista L1 nelle quale gli elementi
sono liste. Ciascuna di esse dovrà contenere un elemento di L ripetuto N volte. A tal fine si definisca e si utilizzi anche
un predicato buildList(X,Y,N)che dato un elemento X e un numero naturale N, dia in uscita una lista Y in cui l’elemento
X è ripetuto N volte. Di seguito si riporta qualche esempio di esecuzione Prolog:
?- multiList([a, b, c, d], Y, 0).
Y = [[], [], [], []]
?- multiList([a, b, c, d], Y, 3).
Y = [[a, a, a], [b, b, b], [c, c, c], [d, d, d]]
?- multiList([a, b, c, d], Y, 1).
Y = [[a], [b], [c], [d]]
?- multiList([], Y, 3).
Y = []
?- buildList(a, Y, 3).
Y = [a,a,a]
*/


% Importante: il cut va assolutamente messo, in quanto Prolog fa unificazione
% secondo la logica left-most, pertanto se a sinistra si ha una variabile/indiff
% prolog cerca di matchare anche il secondo predicato.

buildList(_, [], 0) :- !.
buildList(X, [X|T], N) :- N1 is N - 1, buildList(X, T, N1).

multiList([], [], _).
multiList([H1|T1], [L1|T2], N) :- buildList(H1, L1, N), multiList(T1, T2, N).
