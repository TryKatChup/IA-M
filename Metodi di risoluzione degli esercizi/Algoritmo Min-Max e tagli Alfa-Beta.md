
Uso 3 valori:
- Alpha ("limite superiore")
- V ("massimo/minimo locale")
- Beta ("limite inferiore")

Si procede ad analizzare l'albero con una ricerca Depth-First, i valori di alpha, v e beta sono presi dal padre o inizializzai come:
	- Alpha = -inf
	- Beta = +inf
	- V = -inf nei nodi di Max, +inf nei nodi di Min

Ad ogni intersezione faccio i seguenti passi a seconda che sia un nodo di Min o Max
MIN:
1) Aggiorno V se il valore nel figlio è MINORE del valore attuale
2) Check for pruning: Se il nuovo V <= Alpha allora faccio prune degli altri rami figli...
3) Se non ho fatto pruning aggiorno Beta con il valore MINORE tra V e beta attuale
4) Ripeto finché non controllo (o elimino mediante pruning) tutti i figli
5) Passo al nodo superiore

MAX:
1) Aggiorno V se il valore nel figlio è MAGGIORE del valore attuale
2) Check for pruning: Se il nuovo V >= Beta allora faccio prune degli altri rami figli...
3) Se non ho fatto pruning aggiorno Alpha con il valore MAGGIORE tra V e alpha attuale
4) Ripeto finché non controllo (o elimino mediante pruning) tutti i figli
5) Passo al nodo superiore