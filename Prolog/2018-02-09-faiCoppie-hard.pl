/*

Data una lista L1 di interi si definisca un predicato Prolog faiCoppie(L1,L2) che data una lista L1 di
interi contenente un numero pari di elementi, restituisce la lista L2 delle coppie c(X,Y), dove X e Y sono
elementi adiacenti nella lista L1.
Esempio:
?-faiCoppie([1,3,4,5],L).
L=[c(1,3),c(4,5)]
?-faiCoppie([],L).
L=[]

*/

faiCoppie([],[]).
faiCoppie([H1,H2|T1],[c(H1,H2)|T]) :- faiCoppie(T1,T).
