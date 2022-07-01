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
### Operatori aritmetici 

<table>
  <tr align="center">
    <td>
      <tt>=\=</tt> (not equal)
    </td>
    <td>
      Utilizzato per espressioni aritmetiche e numeriche
    </td>
    <td>
      <bf> xfx <bf>
    </td>
  </tr>
 <tr align="center">
    <td>
      <tt>+</tt>
    </td>
    <td>
      Somma due elementi
    </td>
    <td>
      <bf> xfy <bf>
    </td>
   <tr align="center">
    <td>
      <tt>-</tt>
    </td>
    <td>
      Sottrae due elementi
    </td>
    <td>
      <bf> xfy <bf>
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
      <bf> xfy <bf>
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
      <bf> xfy <bf>
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
      <bf> xfy <bf>
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
      <bf> xfy <bf>
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
      <bf> xfy <bf>
    </td>
   </tr>
</table>

### Predicati aritmetici
abs(Exp)	absolute value of Exp : i.e. Exp if Exp ≥ 0, –Exp if Exp < 0
atan(Exp)	arctangent (inverse tangent) of Exp : result is in radians
cos(Exp)	cosine of the Exp : Exp is in radians
exp(Exp)	eExp : e is 2.71828182845…
log(Exp)	natural logarithm of Exp : i.e. logarithm to the base* e
sin(Exp)	sine of the Exp : Exp is in radians
sqrt(Exp)	square root of the Exp
tan(Exp)	tangent of the Exp: Exp is in radians
sign(Exp)	sign (+1 or –1) of the Exp: sign(–3) = –1 = sign(–3.7)
float(Exp)	float of the Exp: float(22) = 22.0 - see also float the predicate
floor(Exp)	largest integer ≤ Exp: floor(1.66) = 1
truncate(Exp)	remove fractional part of Exp: truncate(–1.5) = –1, truncate(1.5) = 1
round(Exp)	round Exp to nearest integer: round(1.6) = 2, round(1.3) = 1
ceiling(Exp)	smallest integer ≥ Exp: ceiling(1.3) = 2      
  

- `\=` (not equal) utilizzato per valori numerici e per caratteri
- `\+` 
- <, =, =.., =@=, \=@=, =:=, =<, ==, =\=, >, >=, @<, @=<, @>, @>=, \=, \==, as, is, >:<, :<




### Osservazioni

- `!` (cut) utilizzabile per _if mutuamente esclusivi_
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
- Il cut può essere necessario anche nella condizione base, per motivi di efficienza, o quando si è raggiunta una condizione prevista dal caso base.

Esempio:
```prolog
% Caso base, (cut necessario per evitare di finire nel secondo caso, una volta raggiunta
% la condizione base, ovvero S > E).
nuovaLista([], S, E) :- S > E, !.
nuovaLista([S|T], S, E) :- S1 is S + 1, nuovaLista(T, S1, E).
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
