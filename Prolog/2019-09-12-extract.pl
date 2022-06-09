% 12/09/19
/*
Data una lista di reali di nome L che contiene un numero pari di elementi, si realizzi un predicato Prolog
extract(L,L1) che restituisca una nuova lista L1 contenente solo quegli elementi della lista L in modo
che, considerati a coppie, a partire dai primi due elementi, il primo elemento della coppia sia minore o uguale
(ovvero preceda) il secondo elemento.
Ad esempio, se L = [3.2, 4.9, -1.1,-2.7, 5.3, 0], il predicato extract restituisce [3.2,
4.9], in quanto 3.2 precede 4.9, mentre non contiene gli altri elementi in quanto -1.1 non precede -
2.7 e 5.3 non precede 0.
*/
extract([], []).
extract([H1,H2|T], [H1,H2|T1]) :- H1 =< H2, !, extract(T, T1).
extract([H1,H2|T], T1) :- extract(T, T1).
