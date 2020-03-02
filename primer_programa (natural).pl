% --------------------------------------------------------------
% natural(N)
% es cierto si N es un número natural
% --------------------------------------------------------------

/* Comentarios:

1) natural(1)
2) natural(n-1) -> natural(n) (como implicación lógica, o regla lógica)
	natural(N) :- N>1, N2 is N - 1, natural(N2).

	a /\ b /\ c -> d
	
	d :- a, b, c.
	
*/

natural(1).
natural(N) :- N > 1, N2 is N - 1, natural(N2).