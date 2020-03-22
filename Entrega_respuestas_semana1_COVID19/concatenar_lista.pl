% Concatnear dos listas en Prolog
%
% concatenar(+Lista1, +Lista2, -Resultado)
%	es cierto si Resultado contiene los
%	elementos de Lista1 seguidos de los
%	elementos de Lista2 en el mismo orden.

concatenar_lista([], Lista2, Lista2).

concatenar_lista([Cabeza|Resto], Lista2, [Cabeza|R]) :-
	concatenar_lista(Resto, Lista2, R).