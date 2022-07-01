/*
12/07/2018

Si scriva un predicato Prolog intersection(L1, L2, El, L3) che date le liste di atomi L1 e L2
produce la lista L3 degli elementi di L1 uguali all’atomo El e che compaiono anche in L2.
Esempio:
?- intersection([a,b,c,a],[1,2,a,b,a,a], a, L3).
Yes L3=[a,a]
?- intersection([a,b,c],[1,2,a,b,a,a], a, L3).
Yes L3=[a]
?- intersection([a,b,c],[1,2,a,b,a,a], 2, L3).
Yes L3=[]
?- intersection([a,b,c],[1,2,a,b,a,a], w, L3).
Yes L3=[]
Si supponga di avere a disposizione il predicato member(E,L) per verificare se E compare in L.
*/

intersection([], _, _, []).
intersection([E|T1], L2, E, [E|T]) :- member(E, L2), !, intersection(T1, L2, E, T).
intersection([_|T1], L2, E, T) :- intersection(T1, L2, E, T).
