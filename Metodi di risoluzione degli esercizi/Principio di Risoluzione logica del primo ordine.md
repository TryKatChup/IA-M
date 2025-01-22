1) Definizione dei predicati (compresa la richiesta):
   - NOT: -
   - AND: ^
   - OR: v
   - Equiv: <->
   - Implica: ->
   - Esiste: $\exists$
   - Univ: $\forall$
   - OR esclusivo:  ogni studente è A xor B   =>   $\forall$x studente(x) -> (A or B) and (-A or -B)
1) Negazione della richiesta (può essere fatta anche dopo il punto 3)
2) Trasformazione in clausole:
	- $\exists$x A   =>   -( $\forall$x -A)
	- ==$\forall$x A   =>   -($\exists$x -A)==
	- ==(A and C) -> B   diventa   -(A and C) or B   diventa a sua volta   -A or -C or -B==
	- ==Gli AND si separano in clausole separate  (A or B) -> C diventa -A or C, -B or C==
	- A or (B and C) -> (A or B) and (A or C)
	- L or A   +   -L or B   =>   A or B
	- $\forall$x $\forall$y $\exists$z p(x, y, z)   =>   $\forall$x $\forall$y p(x, y, f(x, y))    (FUNZIONE DI SKOLEM)
	- $\exists x \space p(x) \space => \space p(Const)$      (COSTANTE DI SKOLEM)
	- ==Eliminazione di tutti i $\forall$ and $\exists$ ==
3) Risoluzione: si cerca di arrivare ad una clausola vuota per dimostrare una contraddizione usando la richiesta negata

NB: ogni frase dopo la conversione fa sempre riferimento ad un $\forall$ anche se poi viene eliminato, se questo non fosse vero? Ci pensa Skolem.

NB: le variabili devono coincidere (magari dopo opportune sostituzioni)

NB: not $\exists$x A, non viene espanso con la funzione di skolem perchè not $\exists$x A viene visto come $\forall$x -A