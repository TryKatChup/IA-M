Ordine espansione A*: scelgo il minore calcolato come costo del percorso fino a quel punto + valore stimato del nodo.

Ordine espansione Greedy: scelgo il minore guardando solo il valore stimato di ogni nodo (no costo dei percorsi)



Come si garantisce l'Ottimalità?
1) Se il grafo è consistente ovvero per ogni nodo vale: 
     H(padre) <= H(figlio) + Distanza(Padre-Figlio)
2) Se l'euristica è Ammissibile ovvero se per ogni nodo H(nodo) <= del costo reale seguendo il percorso migliore (vale solo se posso espandere nodi già visitati)



