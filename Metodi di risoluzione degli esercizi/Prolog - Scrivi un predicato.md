### Teoria
```Prolog
/* --- Aritmetica e Ricorsione --- */
Operatori Unari:		-, exp, log, ln, sin, cos, tg
Operatori Binari:		+, -, *, \, div, mod
OPERATORI RELAZIONALI:	>, <, >=, =<, ==, \==, [=:=, =\=  valutati]

Predcato IS:		X is 2+3.

% funzioni ricorsive
fatt(0,1).
fatt(N,Y):- N>0, N1 is N-1, fatt(N1,Y1), Y is N*Y1.
/*In Prolog l'ottimizzazione della ricorsione tail è possibile solo se la
scelta nella valutazione di un predicato "p" è deterministica*/

read(X).						% Legge un termine da console
write(X).						% Stampa X (il termine a cui è legata X) a video
nl.								% Stampa un "a capo" (newline)


/* --- Liste --- */
[]								% lista vuota
[VAL1, VAL2, ...|TAIL]			% unificazione di una lista

is_list(T).						% per verificare se un termine è una lista
  is_list([]).
  is_list([X|L]) :- is_list(L).
member(T, L).					% per verificare l'appartenenza di T nella lista L, se T costante oppure per individuare gli elementi della lista L se T è variabile
  member(T, [T | _]).
  member(T, [_ | L]) :- member(T, L).
last(L, X).						% per individuare l'ultimo elemento nella lista L data la variabile X
length(L, N).					% per determinare in N la lunghezza di L
  lenght([],0).
  length([_|L],N) :- length(L,N1), N is N1 + 1.
append(L1, L2, L3).				% per appendere L1 a L2 e savlarla in L3
  append([],L,L).
  append([H|T],L2,[H|T1]):- append(T,L2,T1).
delete(El, L1, L2).				% per rimuovere l'elemento El dalla lista L1 e ritornare la lista risultante in L2
  % see below
reverse(L, Lr).					% per invertire la lista L e ritornare la lista invertita in Lr
  reverse([],[]).
  reverse([H|T],Lr):- reverse(T,T2), append(T2,[H],Lr).
intersection(S1, S2, S3).		% per salvare in S3 l alista data dall'intersezione tra S1 e S2 SENZA RIPETIZIONI
  % see below
union(S1, S2, S3).				% per salvare in S3 gli elementi appartenenti all'unione delle liste S1 e S2
  % see below


/* --- Cut --- */
!								% elimina alcuni punti di scelta dallo stack di backtracking
p :- q1, ..., qi, !, qi+1, ...	% tutte le scelte fatte nella valutazione dei goal q1, ..., qi e nel goal p vengono rese definitive
  % member with cut
  member(El, [El|_]):- !.
  member(El, [_|Tail):- member(El,Tail).
  % Cancellazione di un elemento uguale a T dalla lista
  delete1(T, [], []).
  delete1(T, [T|TAIL], TAIL):- !.
  delete1(T, [HEAD|TAIL], [HEAD|L]):- delete1(T, TAIL, L).
  % Cancellazione di tutti gli elementi uguali a T dalla lista
  delete(T, [], []):- !.
  delete(T, [T | TAIL], L):- !, delete(T, TAIL, L).
  delete(T,[HEAD|TAIL],[HEAD|L]):- delete(T, TAIL, L).
  % intersezione con cut
  intersection([],_,[]).
  intersection([H|T],S2,[H|T3]):- member(H,S2), !, intersection(T,S2,T3).
  intersection([_|T],S2,S3):- intersection(T,S2,S3).
  % unione con cut
  union([], S2, S2).
  union([X|REST],S2,S):- member(X, S2), !, union(REST, S2, S).
  union([X|REST],S2,[X|S]):- union(REST, S2, S).


/* --- Negazione --- */
\+(P(X))						% negazione per fallimento, voglio solo letterali negativi GROUND, no variabili!
	% come usare il not correttamente
    disoccupato(X):- adulto(X), \+(occupato(X)).	% funziona correttamente
    disoccupato(X):- \+(occupato(X)), adulto(X).	% non funziona correttamente


/* --- Meta-Predicati --- */
call(T).						% viene richiesta la valutazione del goal T
  if_then_else(Cond,Goal1,Goal2):- call(Cond), !, call(Goal1).
  if_then_else(Cond,Goal1,Goal2):- call(Goal2).

fail.							% fallisce sempre e quindi forza l’attivazione del meccanismo di backtracking
  % si voglia chiamare la procedura q su ogni elemento X che soddisfa il goal p(X)
  itera :- call(p(X)), verifica(q(X)), write(X), nl, fail.	
  itera.
  % negazione per fallimento
  not(P) :- call(P), !, fail.
  not(P).
  % fallimento globale per vola(X) in casi particolari
  vola(X) :- pinguino(X), !, fail.
  vola(X) :- struzzo(X), !, fail.
  vola(X) :- uccello(X).

setof(X, P(X), S).				% S è l’insieme delle istanze X che soddisfano il goal P, non possono esserci ripetizioni
bagof(X, P(X), L).				% L è la lista delle istanze X che soddisfano il goal P, posso esserci ripetizioni
findall(X, P(X), S).			% S è la lista delle istanze X per cui la proprietà P è vera. Se non ci sono elementi restituisce la lista vuota.
  % implicazione mediante setof
  implica(Y):- setof(X, padre(Y,X),L), verifica(L).
  verifica([]).
  verifica([H|T]):- impiegato(H), verifica(T).
  % iterazione mediante setof
  itera:- setof(X, p(X),L), scorri(L).
  scorri([]).
  scorri([H|T]):- call(q(H)), scorri(T).


/* --- Predicati di meta livello --- */
:- dynamic(amico/2).			% arricchiamo con regole tipo: amico(Nome, Cognome)	il 2 si riferisce al numero di argomenti.
clause(HEAD, BODY).				% vero se :-(HEAD, BODY) è unificato con una clausola all'interno del data base
asserta(amico(marco, rossi)).	% aggiunge il parametro alla base di dati in cima alla lista
assertz(amico(marco, rossi)).	% aggiunge il parametro alla base di dati in fondo alla lista
retract(amico(marco, rossi)).	% rimuove il parametro dalla base di dati

  % metainterprete per prolog puro
  solve(true):-!.
  solve((A,B)):- !,solve(A),solve(B).
  solve(A) :- clause(A,B),solve(B).
```

### Alcuni Esercizi
```Prolog
my_delete(_, [], []):- !.
my_delete(T, [T | TAIL], L):- !, my_delete(T, TAIL, L).
my_delete(T,[HEAD|TAIL],[HEAD|L]):- my_delete(T, TAIL, L).

delList([], L1, L1):- !.
delList(_, [], []):- !.
delList([H1|T1], L1, L3):- my_delete(H1, L1, L2), delList(T1, L2, L3).

dispariList([],[]).
dispariList([X],[X]).
dispariList([X, _ | T], [X | S]):- dispariList(T, S).

inserisciOrd(X, [], X):- !.
inserisciOrd(X, [H|T], [H|T1]):- X > H, !, inserisciOrd(X, T, T1).		% if X > H fails passiamo alla riga sotto altrimenti la ignoro
inserisciOrd(X, L1, [X|L1]).

my_member(X, [X|_]).
my_member(X, [_|R]):- my_member(X, R).

my_memberL(X, [L|_]):- my_member(X, L), !.
my_memberL(X, [_|T]):- my_memberL(X, T).

listint(_, [], []):- !.
listint(L, [A|B], C):- my_memberL(A, L), !, listint(L, B, C).
listint(L, [A|B], [A|C]):- listint(L, B, C).

lista_coppie([], [], []):- !.
lista_coppie([EL1|Y1], [EL2|Y2], [[EL1, EL2] | Y3]):- EL1 < EL2, !, lista_coppie(Y1, Y2, Y3).
lista_coppie([EL1|Y1], [EL2|Y2], [[EL2, EL1] | Y3]):- lista_coppie(Y1, Y2, Y3).

frequenza(_, [], 0):- !.
frequenza(EL, [EL|T], X):- !, frequenza(EL, T, X1), X is X1+1.
frequenza(EL, [_|T], X):- frequenza(EL, T, X).

lista_frequenze([], _, []):- !.
lista_frequenze([H1|T1], L2, [X|L3]):- frequenza(H1, L2, X), lista_frequenze(T1, L2, L3).

newList([], [], _):- !.
newList([H1|T1], [0|T2], N):- H1 < 1, !, newList(T1, T2, N).
newList([H1|T1], [0|T2], N):- H1 > 10, !, newList(T1, T2, N).
newList([H1|T1], [1|T2], N):- H1 == 10, !, newList(T1, T2, N).
newList([H1|T1], [H1, H2|T2], N):- newList(T1, T2, N), H2 is H1+N.

buildList(_, [], 0):- !.
buildList(X, [X|Y], N):- N1 is N-1, buildList(X, Y, N1).

multiList([], [], _):- !.
multiList([H1|T1], [H2|T2], N):- buildList(H1, H2, N), multiList(T1, T2, N).

checkMax([], _):- !.
checkMax([H1|T1], X):- X > H1, !, checkMax(T1, X).

newList2([], _, []):- !.
newList2([H1|T1], L2, [H1|L3]):- checkMax(L2, H1), !, newList2(T1, L2, L3).
newList2([_|T1], L2, L3):- newList2(T1, L2, L3).

checkList([], _):- !.
checkList([H|T], X):- not(member(X, H)), !, checkList(T, X).

listeSplit([], _, [], []):- !.
listeSplit([H1|T1], B, [H1|T2], L3):- H1 < B, !, listeSplit(T1, B, T2, L3).
listeSplit([H1|T1], B, L2, [H1|T3]):- listeSplit(T1, B, L2, T3).

nuovaLista([Start|L], Start, End):- Start < End, !, Start1 is Start+1, nuovaLista(L, Start1, End).
nuovaLista([], _, _):- !.

sum([X], X):- !.
sum([], 0):- !.
sum([H1|T1], N):- sum(T1, N1), N is N1+H1.

cresceSum([]):- !.
cresceSum([_]):- !.
cresceSum([H1, H2|T1]):- sum(H1, A), sum(H2, B), A =< B, cresceSum([H2|T1]).
```
