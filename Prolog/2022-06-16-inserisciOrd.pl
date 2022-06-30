inserisciOrd(N, [], [N]).
inserisciOrd(N, [H|T], [N,H|T]) :- N =< H, !.
inserisciOrd(N, [H|T], [H|T1]) :- inserisciOrd(N, T, T1).
