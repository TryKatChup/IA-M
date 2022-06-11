# Domande di Teoria
## Introduzione
### 1) Si introduca brevemente in cosa consiste il Test di Turing.

Ideato da Alan Turing nel 1950, è un criterio che consente di determinare se una macchina sia in grado di esibire un comportamento intelligente.
In questo problema si hanno tre protagonisti: un uomo, una macchina e un interrogante che in una stanza separata deve determinare quale sia l'uomo e quale la macchina.
Una macchina supera il test di Turing se riesce a ingannare l'interrogante, comportandosi come un essere umano.

La macchina deve avere le seguenti capacità:
– Elaborazione del linguaggio naturale;
– Rappresentazione della conoscenza;
– Ragionamento automatico;
– Apprendimento automatico.

## Sistemi Basati sulla Conoscenza (Knowledge Based)
### 2) Si introduca brevemente l’architettura di un sistema basato sulla conoscenza e si sottolinei la sua differenza rispetto al concetto di algoritmo.

Un sistema Knowledge-Based (KB) è basato fortemente sulla conoscenza del dominio dell'applicazione, ed è costituito da tre macrocomponenti:
- un insieme di operatori (regole)
- una working memory che contiene gli stati correnti
- una strategia di controllo per selezionare le regole da applicare agli stati della working memory, e che usa pattern matching per la verifica delle precondizioni delle regole.

La differenza di un sistema KB rispetto a un algoritmo risiede al tipo di conoscenza: nel caso di un sistema KB è importante con _cosa_ si ha a che fare (il dominio del problema), mentre per quel che riguarda un algoritmo è importante _come_ viene utilizzata la conoscenza a disposizione per risolvere un determinato problema.

### Strategie di Ricerca
1) Si confrontino in termini di complessità spaziale, temporale e ottimalità gli algoritmi di ricerca non informata depth first, breadth first e ad approfondimento iterativo, immaginando che il costo degli archi sia sempre uguale a 1.

Le strategie di ricerca non informate sono:
- la ricerca in ampiezza (BFS o Breadth First)
- la ricerca in profondità (DFS o depth First)
- la DFS a profondità limitata
- la ricerca Iterative Deepening

Da adesso in poi faremo riferimento ai seguenti valori per descrivere complessità spaziale e temporale:
- `b` = fattore di ramificazione
- `d` = profondità della soluzione
- `m` = profondità massima dell'albero di ricerca
- `l` = limite di profondità

Inoltre, abbiamo i seguenti criteri.
- Per complessità spaziale intendiamo quanto spazio occorre per trovare la soluzione.
- Per complessità temporale intendiamo quanto tempo occorre per trovare la soluzione.
- Per ottimalità intendiamo che la soluzione trovata è la migliore soluzione tra tutte quelle possibili.
- Per completezza intendiamo la certezza che troviamo una soluzione quando ne esiste una.

In seguito riportiamo la tabella che riassume in base all'algoritmo scelti i valori dei criteri:

| Criterio  | BFS (con costo arco = 1)  | DFS | DFS-limited  | Iterative deepening   |
|---|---|---|---|---|
| Tempo  | $b^d$  | $B^m$   | $B^l$   | $b^d$  |
| Spazio  | $b^d$   | $b*m$ | $b*l$   | $b*d$  |
| Ottimale?  | Sì  | No  | No  | Sì  |
| Completa?  | Sì  | No  | Sì, se $l >= d$  | Sì   |

La BFS trova il cammino a costo minimo solo se il costo di ogni nodo coincide con la profondità: nel caso in cui il costo degli archi sia uguale a 1 si ha che la BFS coincide con la strategia a costo uniforme, e la soluzione risulta ottimale.

La DFS ha complessità temporale O($b^d$) nel caso peggiore in cui esplora tutti i nodi, ma è possibile memorizzare una sola strada alla volta implementando la ricerca con una pila, ottenendo quindi complessità spaziale O(bd). La DFS può essere non-completa in presenza di cicli. La DFS non trova necessariamente la soluzione ottimale.

La DFS a profondità limitata è una variante della DFS che prevede una profondità massima
nella ricerca. In questo modo si evita di scendere lungo rami infiniti, ma non si risolve il problema della completezza perché potrebbero essitere rami più profondi del limite impostato.

La ricerca iterative deepening è la combinazione tra BFS e una DFS a profondità limitata eseguita ripetutamente. In questo modo la ricerca diventa completa, e ottima se il costo di ogni nodo coincide con la profondità, ma si sviluppa comunque un solo ramo alla volta. Il numero totale di espansioni è comunque O(bd).


1) Si introduca brevemente il metodo di ricerca ad approfondimento iterativo sottolineandone le caratteristiche. Se ne descriva poi sinteticamente l’algoritmo in pseudocodice.

2) Si introduca brevemente il metodo di ricerca locale di Hill-climbing, sottolineandone le caratteristiche. Se ne descriva poi l’algoritmo in pseudo-codice.

3) Si introduca brevemente il metodo di ricerca a costo uniforme sottolineandone le caratteristiche. Se ne descriva poi sinteticamente l’algoritmo in pseudocodice.

4) Descrivere la ricerca A* e definire sotto quali condizioni tale algoritmo di ricerca trova la soluzione ottima.


