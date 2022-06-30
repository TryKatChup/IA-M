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

### Osservazioni

- ! (cut) utilizzabile per _if mutuamente esclusivi_
- Lista di liste: va scomposto il problema in un sottopredicato che si occupi delle liste singole
- `=\=` (not equal) utilizzato per espressioni aritmetiche e numeriche
- `\=` (not equal) utilizzato per valori numerici e per caratteri
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
