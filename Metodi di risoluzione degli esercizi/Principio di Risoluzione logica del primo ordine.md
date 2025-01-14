1) Definizione dei predicati (compresa la richiesta):
   - NOT: -
   - AND: ^
   - OR: v
   - Equiv: <->
   - Implica: ->
   - Esiste: $\exists$
   - Univ: $\forall$
   - OR esclusivo:  ogni studente è A xor B   =>   $\forall$x studente(x) -> (A or B) and -(A or B)
1) Negazione della richiesta (può essere fatta anche dopo il punto 3)
2) Trasformazione in clausole:
	- $\exists$x A   =>   -( $\forall$x -A)
	- $\forall$x A   =>   -($\exists$x -A)
	- ==(A and C) -> B   =>   -(A and C) or B   =>   -A or -C or -B==
	- L or A   +   -L or B   =>   A or B
	- $\forall$x $\forall$y $\exists$z p(x, y, z)   =>   $\forall$x $\forall$y p(x, y, f(x, y))    (FUNZIONE DI SKOLEM)
	- ==Eliminazione di tutti i $\forall$ and $\exists$ ==
3) Risoluzione: si cerca di dimostrare una contraddizione usando la richiesta negata


