### Ricerca A* & co.
Come si garantisce l'Ottimalità?
1) Ammissibile:                               H(nodo) <= del costo reale seguendo il percorso migliore
2) Monotona (o consistente):        H(padre) <= H(figlio) + Distanza(Padre-Figlio)

### Tagli Min-Max
Inizializzazione:
	- Alpha = -inf
	- Beta = +inf
	- V = -inf nei nodi di Max, +inf nei nodi di Min

MIN:
1) Aggiorno V se è MINORE del valore attuale
2) Check for pruning: V <= Alpha?
3) Se non ho fatto pruning aggiorno Beta con il valore MINORE tra V e beta attuale

MAX:
1) Aggiorno V se è MAGGIORE del valore attuale
2) Check for pruning: V >= Beta?
3) Se non ho fatto pruning aggiorno Alpha con il valore MAGGIORE tra V e alpha attuale

### Logica
- OR esclusivo:  ogni studente è A xor B   =>   $\forall$x studente(x) -> (A or B) and (-A or -B)
- $\exists$x A   =>   -( $\forall$x -A)
- $\forall$x A   =>   -($\exists$x -A)
- (A and C) -> B   diventa   -(A and C) or B
- (A and B) -> C diventa -A or C, -B or C
- A or (B and C) -> (A or B) and (A or C)
- L or A   +   -L or B   =>   A or B
- $\forall$x $\forall$y $\exists$z p(x, y, z)   =>   $\forall$x $\forall$y p(x, y, f(x, y))    (FUNZIONE DI SKOLEM)
- $\exists x \space p(Mario, x) \space => \space p(Mario, Const)$      (COSTANTE DI SKOLEM)
- $\exists x \space p(x) \space => \space p(Const)$      (COSTANTE DI SKOLEM)
- Eliminazione di tutti i $\forall$ and $\exists$ 






