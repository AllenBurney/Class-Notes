%q2as1prologpart2.pl : WAP is prolog to calculate product of 'N' natural Numbers.
factorial(1,1).
factorial(F,N):-
	N>=2,
	N1 is N-1,
	factorial(F1,N1),
	F is F1*N.