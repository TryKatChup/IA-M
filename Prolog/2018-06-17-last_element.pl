/*
17/06/2018

Data una lista List, si scriva un predicato last_element(List,Rest,LastEl) che restituisce in
LastEl il suo ultimo elemento e in Rest il resto della lista List.
Ad esempio:
?- last_element([4, a, 7, 2], Rest, LastEl).
yes Rest = [4, a, 7]
 LastEl = 2.
*/

last_element([H|[]], [], H) :- !.
last_element([H|T], [H|T1], X) :- last_element(T, T1, X).
