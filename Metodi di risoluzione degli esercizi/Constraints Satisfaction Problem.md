Euristiche per restringere il dominio:
- **Forward Checking**: controllo solo se i domini successivi sono compatibili con l'assegnazione appena fatta, non me ne frega nulla di constraint tra domini che non hanno a che fare con l'assegnazione corrente.
- **Partial Look Ahead**: dopo i controlli del Forward Checking controllo anche i domini successivi ma solo "in avanti". Es, elimino valori da X2 se non sono compatibili con il dominio di X3 e X4, non me ne frega nulla di X0 e X1.
- **Full Look Ahead**: Guarda anche indietro (X1 e X0 nell'esempio precedente)

Scelta della variabile su cui fare il labelling:
- **Minimum Remaining Value (o First Fail)**: assegno la variabile con il numero di valori rimanenti più piccolo.
- **Most Constrained Principle**: assegno prima la variabile con il maggior numero di constraints

