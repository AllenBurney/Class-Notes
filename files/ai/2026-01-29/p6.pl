%q2as1prologpart2.pl : WAP in prolog to calculate s=1+2+3+4+...+N.
mysum(1,1).
mysum(S,N):-
	N>=2,N1 is N-1,
	mysum(S1,N1),
	write('Partial Sum='),write(S1),nl,
	S is S1+N.
