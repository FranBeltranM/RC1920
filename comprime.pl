
/* 
   comprime(+Lista, -R)
   es cierto si R unifica con una lista
   de la siguiente forma:
  
   comprime([1,1,1,2,2,2,3,4,4], R).
   R=[(1,3), (2,3), (3,1), (4,2)]   
	
*/


comprime([], []).
comprime([E], [(E,1)]).
comprime([C1, C1|Resto], [(C1, N2)|R]) :-
	comprime([C1|Resto], [(C1,N)|R]),
	N2 is N+1.
comprime([C2, C3|Resto]), [(C2,1)|R] :-
	C2 \= C3,
	comprime([C3|Resto], R).