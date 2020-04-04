% Capítulo 1
%	Operaciones con Listas

/*
	Ejercicio 1.1: Definir la relación primero(?L,?X)
	que se verifique si X es el primer elemento de la lista L.
*/

primero([X|_], X).

/*
	Ejercicio 1.2: Definir la relación resto(?L1,?L2) que se verifique
	si L2 es la lista obtenida a partir de la
	lista L1 suprimiendo el primer elemento.
*/

resto([_|X], X).

/*
	Ejercicio 1.3: Definir la relación cons(?X,?L1,?L2) que se verifique
	si L2 es la lista obtenida añadiéndole
	X a L1 como primer elemento.
*/

cons(X, L, [X|L]).

/*
	Ejercicio 1.4: Definir la relación pertenece(?X,?L) que se verifique
	si X es un elemento de la lista L.
*/

pertenece(X, [X|_]).

pertenece(X, [_|Resto]) :-
	pertenece(X, Resto).

/*
	Ejercicio 1.5: Definir la relación conc(?L1,?L2,?L3) que se verifique
	si L3 es la lista obtenida escribiendo
	los elementos de L2 a continuación de los elementos de L1.
*/

conc([], L, L).

conc(L1, L2, S) :-
	append(L1, L2, S).


/*
	Ejercicio 1.6: Definir la relación inversa(+L1,-L2) que se verifique
	si L2 es la lista obtenida invirtiendo
	el orden de los elementos de la lista L1
*/

inversa([], []).

inversa([C|Lista1], Lista2) :-
	inversa(Lista1, Intermedio),
	append(Intermedio, [C], Lista2).

/*
	Ejercicio 1.7: Un palíndromo es una palabra que se lee igual en los dos sentidos,
	por ejemplo “oso”. Definir la relación palíndromo(+L) que se verifique
	si la lista L es un palíndromo. 
*/

palindromo(L) :-
	reverse(L,L).
	
/*
	Ejercicio 1.8: Definir la relación último(?X,?L) que se verifique
	si X es el último elemento de la lista L.
*/

ultimo(X, [X]).

ultimo(X, [_|R]) :-
	ultimo(X, R).

/*
	Ejercicio 1.9: Definir lar relación penúltimo(?X,?L) que se verifique
	si X es el penúltimo elemento de la lista L.
*/

penultimo(X, L) :-
	reverse(L, [_,X|_]).


/*
	Ejercicio 1.10: Definir la relación selecciona(?X,?L1,?L2) que se verifique
	si L2 es la lista obtenida eliminando una ocurrencia de X en L1.
*/

selecciona(X, [X|R], R).

selecciona(X, [Y|R1], [Y|R2]) :-
	selecciona(X, R1, R2).

/*
	Ejercicio 1.11: Definir la relación inserta(?X,?L1,?L2) que se verifique
	si L2 es una lista obtenida insertando X en L1.	
*/

inserta(X, L1, L2) :-
	select(X, L2, L1).
	
%inserta(X, [C1|R1], [X, C1|R1]).













