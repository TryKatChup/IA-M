/*

13/07/2017
Data una lista L di liste di coppie di numeri si definisca un predicato Prolog coppie(L,L1) in grado di
restituire una nuova lista semplice L1 contenente come elementi i numeri risultanti dalla somma delle coppie
di L che hanno il primo elemento strettamente maggiore del secondo, ignorando le altre.
Esempio:
?- coppie([[1,2], [7,2], [2,2], [9,5]], L1).
Yes L1 = [9, 14].
*/

coppie([], []).
coppie([[H1,H2]|T1], [H|T]) :- H1 > H2, !, coppie(T1, T), H is H1 + H2.
coppie([_|T1], T) :- coppie(T1,T).


