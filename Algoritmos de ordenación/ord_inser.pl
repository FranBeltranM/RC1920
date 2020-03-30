/* ord_inser(+Lista, -R)
	es cierto si R unifica con una Lista
	que contiene los elementos de Lista
	ordenados de menor a mayor.
*/

ord_inser([], []).
ord_inser([Cab|Resto], R2) :-
	ord_inser(Resto, R),
	inser_lista_ord(Cab, R, R2).

/* inser_lista_ord(+E, +Lista, -R)
	Es cierto si R unifica con una Lista
	que contiene los elementos de Lista
	(lista ordenada) con E insertado en
	su posición correcta.
*/

inser_lista_ord(E, [], [E]).

inser_lista_ord(E, [Cab|Resto], [Cab|R2]) :-
	E > Cab, inser_lista_ord(E,Resto,R2).

inser_lista_ord(E, [Cab|Resto], [E, Cab|Resto]) :-
	E =< Cab.