/*
13/09/2018

Si scriva un predicato Prolog included(L1, L2) che date le liste di atomi L1 e L2 verifica se gli elementi
della prima sono tutti anche nella seconda. Si definiscano tutti i predicati che si utilizzano.
Esempio:
?- included([a,b,c],[a,b,c]).
Yes
?- included([a,b,c],[b,c,a]).
Yes
?- included([a,b,c],[a,b,c,a]).
Yes
?- included([a,b,c],[1,2,a,b]).
No
*/


included([], _).
included([H|T], L2) :- member(L2, H), included(T, L2).


member([X|_], X):- !.
member([_|T], X):- member(T, X).
