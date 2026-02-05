%q4as1prolog1.pl:
myloop(0).
myloop(N):-
	N>0, write('NUMBER:'),
	write(N),nl,
	M in N-1,
	myloop(M).