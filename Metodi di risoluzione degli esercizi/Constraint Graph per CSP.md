1) Si fa lo schemino, un nodo per ogni variabile e un arco per ogni restraint che collega le variabili trattate.
2) Si aggiornano i vari domini in base a tutti i restraint.
3) Se avvengono dei cambiamenti di qualsiasi tipo è necessario fare una nuova iterazione in cui ricontrollo tutti i restraint.
4) Quando finalmente faccio una iterazione in cui non avvengono cambiamenti nel dominio diciamo che il sistema ha raggiunto la quiescenza e l'esercizio termina.


NB: La arc consistency è unidirezionale ma ogni constraint può essere considerato in entrambe le direzioni, quindi ogni constraint genera due archi, uno diretto e uno inverso.

NB: Forzare un backtracking vuol dire tornare all'ultimo punto di scelta e provare una soluzione diversa da quella scelta precedentemente.