# Prolog
Raccolta di prove realizzate in Prolog e commentate da me.

### `utilities-lists.pl`
Il file `utilities-lists.pl` contiene tutti i vari predicati che realizzano funzioni basilari con le liste, tra le quali:
- append
- reverse
- contains
- sublist
- palindrome
- count occurrences
- flattening
- sort

**N.B.** Molti predicati sono già presenti di base in Prolog, ma ne viene mostrata la realizzazione.

## Ripasso
### Associatività
|Prefix| Postfix| Infix |Associativity|
|--|--|--|--|
|fx|xf|xfx|none|
|  |yf|yfx|left|
|fy|   | xfy |right
### Operatori aritmetici 

<table>
 <tr align="center">
    <td>
      <tt>+</tt>
    </td>
    <td>
      Somma due elementi
    </td>
    <td>
      <bf> fy <bf>
    </td>
   <tr align="center">
    <td>
      <tt>-</tt>
    </td>
    <td>
      Sottrae due elementi
    </td>
    <td>
      <bf> fy <bf>
    </td>
  </tr>
   <tr align="center">
    <td>
      <tt>*</tt>
    </td>
    <td>
      Moltiplica due elementi
    </td>
    <td>
      <bf> yfx <bf>
    </td>
  </tr>
 <tr align="center">
    <td>
      <tt>/</tt>
    </td>
    <td>
      Divide due elementi
    </td>
    <td>
      <bf> yfx <bf>
    </td>
   </tr>
  <tr align="center">
    <td>
      <tt>//</tt>
    </td>
    <td>
      Divisione tra interi
    </td>
    <td>
      <bf> yfx <bf>
    </td>
   </tr>
    <tr align="center">
    <td>
      <tt>mod</tt>
    </td>
    <td>
      Modulo
    </td>
    <td>
      <bf> yfx <bf>
    </td>
   </tr>
 <tr align="center">
    <td>
      <tt>**</tt>
    </td>
    <td>
      Potenza
    </td>
    <td>
      <bf> xfx <bf>
    </td>
   </tr>
</table>

### Predicati aritmetici
<table>
 <tr align="center">
    <td>
      <tt>abs(Exp)</tt>
    </td>
    <td>
      Valore assoluto
    </td>
  </tr>
 <tr align="center">
    <td>
      <tt>atan(Exp)</tt>
    </td>
    <td>
      Arcotangente
    </td>
   <tr align="center">
    <td>
      <tt>cos(Exp)</tt>
    </td>
    <td>
      Coseno
    </td>
  </tr>
   <tr align="center">
    <td>
      <tt>exp(Exp)</tt>
    </td>
    <td>
      <tt>e^Exp</tt>
    </td>
  </tr>
 <tr align="center">
    <td>
      <tt>log(Exp)</tt>
    </td>
    <td>
      Logaritmo naturale di <tt>Expr</tt>
    </td>
   </tr>
  <tr align="center">
    <td>
      <tt>sin(Exp)</tt>
    </td>
    <td>
      Seno
    </td>
   </tr>
    <tr align="center">
    <td>
      <tt>sqrt(Exp)</tt>
    </td>
    <td>
      Radice quadrata di <tt> Expr </tt>
    </td>
   </tr>
 <tr align="center">
    <td>
      <tt>tan(Exp)</tt>
    </td>
    <td>
      Tangente
    </td>
   </tr>
<tr align="center">
    <td>
      <tt>sign(Exp)</tt>
    </td>
    <td>
      Assume valore 1 o -1 in base al segno di <tt>Expr</tt>
    </td>
   </tr>
<tr align="center">
    <td>
      <tt>float(Exp)</tt>
    </td>
    <td>
      Trasforma un numero da intero a float
    </td>
   </tr>

<tr align="center">
    <td>
      <tt>truncate(Exp)</tt>
    </td>
    <td>
      Rimuove la parte decimale di un numero
    </td>
   </tr>

   <tr align="center">
    <td>
      <tt>floor(Exp)</tt>
    </td>
    <td>
      Arrotonda per difetto
    </td>
   </tr>
<tr align="center">
    <td>
      <tt>round(Exp)</tt>
    </td>
    <td>
      Se <tt>>= .5</tt> arrotonda per eccesso, per difetto altrimenti
    </td>
    </tr>
    <tr align="center">
    <td>
      <tt>ceiling(Exp)</tt>
    </td>
    <td>
      Arrotonda per eccesso
    </td>
</table>

### Operatori relazionali

<table>
   <tr align="center">
    <td>
      <tt><</tt>
    </td>
    <td>
      Minore
    </td>
    <td>
      <bf> xfx <bf>
    </td>
  </tr>
 <tr align="center">
    <td>
      <tt>></tt>
    </td>
    <td>
      Maggiore
    </td>
    <td>
      <bf> xfx <bf>
    </td>
   </tr>
  <tr align="center">
    <td>
      <tt>=<</tt>
    </td>
    <td>
      Minore o uguale
    </td>
    <td>
      <bf> xfx <bf>
    </td>
   </tr>
    <tr align="center">
    <td>
      <tt>>=</tt>
    </td>
    <td>
      Maggiore o uguale
    </td>
    <td>
      <bf> xfy <bf>
    </td>
   </tr>
 <tr align="center">
    <td>
      <tt>\+ Expr </tt>
    </td>
    <td>
      Ha successo se <tt>Expr</tt> fallisce. Sostituisce <tt>not</tt>
    </td>
    <td>
      <bf> fy <bf>
    </td>
   </tr>
 <tr align="center">
    <td>
      <tt>\==</tt>
    </td>
    <td>
      Disuguaglianza logica
    </td>
    <td>
      <bf> xfx <bf>
    </td>
   </tr>
 <tr align="center">
    <td>
      <tt>=:=</tt>
    </td>
    <td>
      Uguaglianza aritmetica ( <tt>3 =:= 3.0</tt> è vera) 
    </td>
    <td>
      <bf> xfx <bf>
    </td>
   </tr>
  <tr align="center">
    <td>
      <tt>=\=</tt>
    </td>
    <td>
      Disuguaglianza aritmetica
    </td>
    <td>
      <bf> xfx <bf>
    </td>
  </tr>
<tr align="center">
    <td>
      <tt>\=</tt>
    </td>
    <td>
      Non unificazione. Equivalente a <tt>not(X = Y)</tt>
    </td>
    <td>
      <bf> xfx <bf>
    </td>
  </tr>
</table>    

### `is`

```prolog
<number or variable> is expr
```

`is` valuta le espressioni aritmetiche alla sua destra, prima di assegnare il risultato dell'espressione ai termini alla sua sinistra.

Esempio:
``` prolog
?- X is 2 + 4.
X = 6
```

### Osservazioni generali
- Lista di liste: va scomposto il problema in un sottopredicato che si occupi delle liste singole
- Quando devo effettuare un conteggio e non ho una variabile inizializzata, occorre prima effettuare una chiamata ricorsiva al predicato e poi incrementare il conteggio. L'inizializzazione avviene sempre nel caso base!

Esempio:
``` prolog
% Count occurrences
count([], _, 0).
count([E|T], E, C) :- count(T, E, C1),
                      C is C1 + 1.
count([_|T], E, C) :- count(T, E, C).
```

- Se ho da restituire una lista contenenti coppie di liste e devo iterare sulla lista risultato, per avere una lista di coppie posso usare `[[H1,H2] | T3]]`
NB non dimenticarsi `[]` che racchiude la coppia!
- Se devo verificare l'uguaglianza tra due elementi in testa a due liste, per poi aggiungere l'elemento alla lista risultato basta fare:
```prolog
prova([H|T1],[H|T2], [H|T]) :- prova(T1,T2,T).
```
- Se una variabile non viene utilizzata, usare il simbolo di indifferenza `_`
- Negli esercizi con query yes/no, se si vuole ottenere no, ricordarsi del NF (Negation as Failure) + logica positiva di Prolog: se si vuole fallimento, nessuna condizione deve essere vera, quindi non si devono prevedere condizioni alternative.
- Se si vuole prendere (o anche scartare) il primo e il secondo elemento di una lista in Prolog, basta fare:

```prolog
extract([H1,H2|T]
```
- Se in un caso base si ha un predicato che considera un elemento e una lista vuota, e si vuole restituire una lista con quell'elemento, occorre fare:

```prolog
prova(N, [], [N]).
```

In questo esempio si mettono le parentesi quadre, in quanto si vuole distinguere il terzo argomento (una lista) da un elemento (`N`).


#### Cut
- `!` (cut) utilizzabile per _if mutuamente esclusivi_
- Il cut può essere necessario anche nella condizione base, per motivi di efficienza, o quando si è raggiunta una condizione prevista dal caso base.

Esempio 1:
```prolog
% Caso base, (cut necessario per evitare di finire nel secondo caso, una volta raggiunta
% la condizione base, ovvero S > E).
% NB la lista non è inizializzata, pertanto inizialmente sarà in ogni caso vuota!
nuovaLista([], S, E) :- S > E, !.
nuovaLista([S|T], S, E) :- S1 is S + 1, nuovaLista(T, S1, E).
```
Esempio 2 (`member`):
```prolog
% Per motivi di efficienza aggiungo !, dato che appena trovo l'elemento fermo la mia ricerca.
% Non ha senso che continui la ricerca, se il mio scopo è di trovare che esista almeno un'occorrenza di X.
member([X|_], X) :- !.
member([_|T], X) :- member(T, X).
```

#### Caso particolare di inizializzazione
Si definisca un predicato `stessaSomma(L,V)` che data una lista di liste non vuota L, controlla che le somme di
tutti gli elementi per ciascuna delle (sotto-)liste contenute in L siano uguali a V.
Ad esempio per il goal:

```prolog
?-stessaSomma([[6,7,2], [1,5,9], [8,3,4]], V).
Yes V=15
```

perché la somma di tutti gli elementi di ciascuna sotto-lista è pari a 15. 

Altri esempi:

```prolog
?-stessaSomma([[6,4,1,2], [1,12], [8,5]], V).
Yes V=13
```

```prolog
?-stessaSomma([[6,7], [1,12], [8,5]], 13).
Yes
```

```prolog
?-stessaSomma([],V).
No
```

**Soluzione**
```prolog
stessaSomma([H], V) :- !, sum(H,V).
stessaSomma([H|T], V) :- sum(H,V), stessaSomma(T,V).

sum([], 0).
sum([H], H) :- !.
sum([H|T], V) :- sum(T, V1),  V is V1 + H.
```

**Osservazioni**
- `sum`: il secondo caso è stato introdotto per motivi di efficienza: si risparmia un' iterazione, quindi se si hanno più liste si risparmiano `N` iterazioni (con `N` sottoliste della lista)
-`stessaSomma`: caso particolare di inizializzazione. Nell'esercizio si ha:

```prolog
?-stessaSomma([],V).
No
```

Se fosse stato `yes, V=0`, l'esercizio si poteva risolvere in questo modo:

```prolog
stessaSomma([], 0).
stessaSomma([H|T], V) :- sum(H,V), stessaSomma(T,V).

sum([], 0).
sum([H], H) :- !.
sum([H|T], V) :- sum(T, V1),  V is V1 + H.
```

Poiché era richiesta inizializzazione nel caso in cui la lista di liste fosse vuota.
In questo caso, quindi, era necessario _non avere il caso base con la lista vuota_, quindi bisognava ragionare in un altro modo, ovvero: 

> _Non possiamo avere il caso lista vuota, poiché V in quel caso non può essere inizializzato, quindi il risultato della query deve essere false_

$\implies$ La lista non deve mai essere vuota, ma deve contenere almeno un elemento.

```prolog
stessaSomma([H], V) :- !, sum(H,V).
```
