%q1as1prolog1.pl:WAP in prolog
%calculate(i)A+B,(ii)A-B,(iii)A*B,(iv)A/B.
calculate:-
	write('Enter A='),read(A),
	write('Enter B='),read(B),
	S is A+B,
	DF is A-B,
	PD is A*B,
	DV is A/B,
	write('A='),write(A),nl,
	write('B='),write(B),nl,
	write('A+B='),write(S),nl,
	write('A-B='),write(DF),nl,
	write('A*B='),write(PD),nl,
	write('A/B='),write(DV),nl.
	