### Ricerca A* & co.
Come si garantisce l'Ottimalità?
1) Consistente (o monotona):        H(padre) <= H(figlio) + Distanza(Padre-Figlio)
2) Ammissibile:                               H(nodo) <= del costo reale seguendo il percorso migliore

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








