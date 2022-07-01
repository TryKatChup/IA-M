/*
Si scriva un programma Prolog listint(List1,List2,Lista3) che date due liste, List1, composta a sua volta da liste di interi,
e List2 composta da numeri interi, restituisca in uscita una lista List3 che contiene tutti gli elementi di List2 che non
appartengono a nessuna delle liste in List1. Se List1 è vuota restituirà la lista List2. Se List2 è vuota restituirà la lista
vuota. Ad esempio:
?- listint([[4,5],[3], [1,9], []], [10, 4, 1, 7], List3)
yes List3=[10,7].
?- listint([], [10, 4, 1, 7], List3)
yes List3=[10,4,1,7].
?- listint([[4,5],[3], [1,9], []], [], List3)
yes List3=[].
Per la soluzione si può anche utilizzare il predicato member/2 così definito:
member(X,[X|_]).
member(X,[_|R]) :- member(X,R).
*/


% Caso base 1: L1 vuota, L2 contiene elementi.
listint([], L2, L2) :- !.

% Caso base 2: L2 vuota.
listint(_, [], []) :- !.

% Caso 3: elemento di L2 contenuto in una sottolista di L1.
listint(L1, [H2|T2], T) :- memberList(H2, L1), !, listint(L1, T2, T).

% Caso 4: elemento di L2 NON contenuto in nessuna lista di L1
listint(L1, [H2|T2], [H2|T]) :- listint(L1, T2, T).


% Definisco predicato ausiliario member, che controlla se un elemento è presente in una lista
member(X,[X|_]).
member(X,[_|R]) :- member(X,R).

% Lista di liste: predicato ausiliario che controlla se per ciascuna lista un elemento è contenuto in almeno una lista.
% Dato un elemento e la prima lista della sottolista, controlla se effettivamente quella sottolista contiene quell'elemento. Se sì, allora non procedo a controllare il resto degli elementi, poiché basta una sola sottolista a contenere quell'elemento.

% Caso base: la sottolista contiene l'elemento
memberList(X, [H|_]) :- member(X,H), !.

% Caso 2: la sottolista non contiene l'elemento ed esamino la sottolista successiva
memberList(X, [_|T]) :- memberList(X, T).
