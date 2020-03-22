% invertir_lista(+Lista, -Resultado)

%	es cierto si Resultado unifica
%	con una lista que contiene
%	los elementos de Lista en orden inverso

invertir_lista([],[]).					% P(n0)
invertir_lista([Cabeza|Resto], R2):-		% P(n-1) -> P(n)
	invertir_lista(Resto, R),
	append(R, [Cabeza], R2).