/*
	Arboles Binarios

	nil
	a(Etiqueta, HijoIzquierda, HijoDerecha)

		1
	2		3
*/

arbol1( a(1, a(2,nil,nil), a(3,nil,nil)) ).
arbol2( a( 1, a(2, a(4,nil,nil), a(5,nil, nil)), a(3, a(6, nil, nil), a(7,nil,nil)) ) ).

/*
pertenece(-E, +Arbol).
	es cierto si la etiqueta E pertenece al
	árbol binario Arbol.
*/

% pertenece(_, nil). % FALSO!

pertenece(E, a(E, _, _)).

pertenece(E, a(Et, HI, _)) :-
	E \= Et,
	pertenece(E, HI).

pertenece(E, a(Et, _, HD)) :-
	E \= Et,
	pertenece(E, HD).


/*
    hojas(Arbol, Lista)
    es cierto si Lista unifica con
    una lista que contiene todas las hojas
    del árbol
*/

% Tengo que tener en cuenta todas las opciones

% 1. Los dos nulos
% 2. dos árboles no nulos.
% 3. HI nulo, derecha no nulo.
% 4. HD nulo, izquierda no nulo.

hojas(nil,[]).

hojas(a(E, nil, nil), [E]).

hojas(a(_, nil, HD), RD) :-
	HD \= nil,
	hojas(HD, RD).

hojas(a(_, HI, nill), RI) :-
	HI \= nil,
	hojas(HI, RI).

hojas(a(_, HI, HD), R) :-
	HI \= nil, HD \= nil,
	hojas(HI, RI),
	hojas(HD, RD),
	append(RI, RD, R).


% preorden
% raiz, HI, HD

preorden(nil, []).
preorden(a(E, HI, HD), U) :-
	preorden(HI, RI),
	preorden(HD, RD),
	append([E|RI], RD, U).

% posorden
% HI, HD, raiz

posorden(nil, []).
posorden(a(E, HI, HD), U) :-
	posorden(HI, RI),
	posorden(HD, RD),
	append(RI, RD, R),
	append(R,[E], U).

% inorden
% HI, raiz, HD

inorden(nil, []).
inorden(a(E, HI, HD), U) :-
	inorden(HI, RI),
	inorden(HD, RD),
	append(RI, [E], R),
	append(R, RD, U).
