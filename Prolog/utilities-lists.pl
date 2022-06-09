% 0. Utility functions (append, reverse, contains)
myAppend([], L, L).
myAppend([X|L1], L2, [X|L]) :- myAppend(L1, L2, L).

myReverse([E], [E]).
myReverse([H|T], R) :- myReverse(T, L),
                       myAppend(L, [H], R).

contains([X|_], X).
contains([_|T], X) :- contains(T, X).

% 1. Last element
lastElem([X], X).
lastElem([_|T], X) :- lastElem(T, X).

% 2. Sublist
elemWiseSub([E], [E|_]).
elemWiseSub([HS|TS], [HS|T]) :- elemWiseSub(TS, T).
elemWiseSub([_|TS], [_|T]) :- isSub(TS, T).
isSub([HS|TS], [HS|T]) :- elemWiseSub(TS, T).
isSub([HS|TS], [_|T]) :- isSub([HS|TS], T).

% 3. Palindrome
compare([E], [E]).
compare([H|T1], [H|T2]) :- compare(T1, T2).
isPal(L) :- myReverse(L, R), compare(L, R).

% 4. Repeated elements
repElems([], []).
repElems([H|T], R) :- not(contains(T, H)),
                      repElems(T, R).
repElems([H|T], R) :- contains(T, H),
                      repElems(T, L),
                      not(contains(L, H)),
                      myAppend([H], L, R).
repElems([H|T], R) :- contains(T, H),
                      repElems(T, R),
                      contains(R, H).


% 5. Count occurrences
count([], _, 0).
count([E|T], E, C) :- count(T, E, C1),
                      C is C1 + 1.
count([_|T], E, C) :- count(T, E, C).

% 6. Flattening
flatten([], []).
flatten([H|T], F) :- flatten(H, HF),
                     flatten(T, TF),
                     myAppend(HF, TF, F).
flatten(E, [E]).

% 7. Sort
insert(X, [], [X]).
insert(X, [H|T], L) :- X < H,
                       myAppend([X], [H|T], L).
insert(X, [H|T], L) :- X > H,
                       insert(X, T, L1),
                       myAppend([H], L1, L).
mySort([X], [X]).
mySort([H|T], L) :- mySort(T, L1),
                    insert(H, L1, L).