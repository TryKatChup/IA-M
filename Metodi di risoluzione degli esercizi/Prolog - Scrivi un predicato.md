
```prolog
%   ricorsiva
fatt( 0, 1 ).
fatt( N, Y ) :- N>0, N1 is N-1, fatt( N1, Y1 ), Y is N*Y1.

%   ricorsiva tail
fatt_tail( N, Y ) :- fatt_tail( N, 1, Y ).
fatt_tail( 0, Acc, Acc ).
fatt_tail( N, Acc, Y ) :- N>0, N1 is N-1, Acc1 is N*Acc, fatt_tail( N1, Acc1, Y ).

%   Esempio cut per capirlo
g(X) :- a(X).
g(X) :- b(X).
a(X) :- !, X is 1.
a(X) :- X is 2.
b(X) :- X is 3.

%   If condition then 1 else 2
c(_) :- false.
p(X) :- c(X), !, X is 1.
p(X) :- X is 2.

is_list( [] ).
is_list( [_|L] ) :- is_list( L ).

mymember( T, [T|_] ).
mymember( T, [_|L] ) :- mymember( T, L ).

%   ricorsiva
mylength( [], 0 ).
mylength( [_|L], N ) :- mylength( L, N1 ), N is N1+1.

%   ricorsiva tail
length_tail( L, N ) :- length_tail( L, 0, N ).
length_tail( 0, Acc, Acc ).
length_tail( [_|L], Acc, N ) :- Acc1 is Acc+1, length_tail( L, Acc1, N ).

myappend( [], L, L ).
myappend( [X|T], Y, [X|Z] ) :- myappend( T, Y, Z ).

mydelete( _, [], [] ).
mydelete( E, [E|TI], TO ) :- !, mydelete( E, TI, TO ).
mydelete( E, [X|TI], [X|TO] ) :- mydelete( E, TI, TO ).

mydelete1( _, [], [] ).
mydelete1( E, [E|T], T ) :- !.
mydelete1( E, [X|TI], [X|TO] ) :- mydelete1( E, TI, TO ).

myreverse( [], [] ).
myreverse( [X|TI], L ) :- myreverse( TI, TO ), myappend( TO, [X], L ).

%   NON FUNZIONA QUESTO!!
testreverse( [], [] ).
testreverse( [X|TI], [TO,X] ) :- testreverse( TI, TO ).

myreverse_tail( L1, L2 ) :- myreverse_tail( L1, [], L2 ).
myreverse_tail( [], A, A ).
%   "POSSO USARE L'APPEND MA E' INUTILE"
myreverse_tail( [X|T], A, LO ) :- myreverse_tail( T, [X|A], LO ).

myintersection( [], _, [] ).
myintersection( [X|T1], L2, [X|LO] ) :- mymember( X, L2 ), !, myintersection( T1, L2, LO ).
myintersection( [_|T1], L2, LO ) :- myintersection( T1, L2, LO ).

testunion( [], L2, L2 ).
testunion( [X|T1], L2, LO ) :- testunion( T1, L2, LO ), mymember( X, LO ), !.
testunion( [X|T1], L2, [X|LO] ) :- testunion( T1, L2, LO ).

myunion( [], L2, L2 ).
myunion( [X|T1], L2, LO ) :- mymember( X, L2 ), !, myunion( T1, L2, LO ).
myunion( [X|T1], L2, [X|LO] ) :- myunion( T1, L2, LO ).
```


