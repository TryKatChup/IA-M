/*
16/02/2017

Si definisca un predicato Prolog differenti(L1,L2)che ha successo se le due liste L1 e L2 non
hanno elementi in comune. Si definiscano anche eventuali predicati di supporto. Esempio:
?- differenti([a,b,c],[d,e]) yes
?- differenti([a,b,c],[c,e]) no
*/

differenti([], _).
differenti([H1|T1], L) :- not(member(L, H1)), differenti(T1, L).

member([X|_], X).
member([_|T], X) :- member(T, X).

/*
Soluzione alternativa:

differenti([], L).
differenti([A|B], L) :- non_member(A, L), differenti(B, L).
non_member(X, []).
non_member(X, [A|B]) :- X\=A, non_member(X, B).
*/
