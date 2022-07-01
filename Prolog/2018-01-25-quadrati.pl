/*
25/01/2018

Data una lista L1 di interi si definisca un predicato Prolog quadrati che riporta la lista L2 dei numeri
quadrati presenti in L1. Si supponga di avere a disposizione un predicato isSquare/1 che ha successo se
il suo argomento è legato a un valore intero quadrato (ovvero un valore intero che è il quadrato di un altro
intero).
Esempio:
?-quadrati([1,3,4,25,36],L).
L=[1,4,25,36]
?-quadrati([6,3,5,7],L).
L=[]
*/

quadrati([], []).
quadrati([H|T1], [H|T]) :- isSquare(H), !, quadrati(T1, T).
quadrati([_|T1], T) :- quadrati(T1, T).

% float_fractional_part prende la parte decimale di un numero
isSquare(X) :- Y is sqrt(X), Y1 is float_fractional_part(Y), Y1==0.0.

