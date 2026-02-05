%q1as1prologpart2.pl : WAP in prolog to display all numbers<=N.
mynumber(0).
mynumber(N):-
	N>0,write('N='),write(N),nl,
	M is N-1, mynumber(M).
	