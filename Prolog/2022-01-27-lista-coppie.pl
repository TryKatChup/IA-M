/*
27/01/22

Si realizzi un predicato Prolog lista_coppie(L1, L2, L3) che date due liste L1 e L2 di interi di uguale lunghezza deve
restituire una nuova lista L3 contenente delle liste di due elementi [el1,el2] che appartengono a L1 o L2, compaiono
nelle stessa posizione nelle due liste e in cui il primo elemento el1 è minore o uguale del secondo el2. Si tenga conto
anche del possibile caso in cui L1 e L2 siano liste vuote: in tal caso L3 sarà anche essa vuota.
Esempi:
?- lista_coppie([3,7,0,5],[4,6,0,3],L3).
L3 = [[3, 4], [6, 7], [0, 0], [3, 5]]
?- lista_coppie([],[],L3).
L3 = []
*/

% Individuo il caso base
lista_coppie([],[],[]).
% La lista risultato conterrà coppie nell'ordine giusto (prima l'elemento minore, poi quello maggiore
% NB so già che le liste hanno due elementi, quindi basta definire ogni lista composta da coppie
lista_coppie([H1|T1],[H2|T2],[[H1,H2]|T3]) :- H1 =< H2, !, lista_coppie(T1, T2, T3). 
lista_coppie([H1|T1],[H2|T2],[[H2,H1]|T3]) :- lista_coppie(T1,T2,T3).
