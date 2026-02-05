%q2as1prolog1.pl:WAP in prolog to input A,B,C. Calculate and print largest value.
largest:-
	write('Enter A='),read(A),
	write('Enter B='),read(B),
	write('Enter C='),read(C),
	(
	A>=B,A>=C->Big is A
	;
		(B>=A,B>=C->Big is B
		;
		Big is C
		)
	),
	write('A='),write(A),nl,
	write('B='),write(B),nl,
	write('C='),write(C),nl,
	write('Largest Value='),write(Big),nl.