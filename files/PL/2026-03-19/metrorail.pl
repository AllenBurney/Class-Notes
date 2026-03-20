%metrorail:

route(mahanayak,rabindrasarovar,1).
route(rabindrasarovar,mahanayak,1).
route(rabindrasarovar,kalighat,1).
route(kalighat,rabindrasarovar,1).
route(jatindaspark,kalighat,1).
route(kalighat,jatindaspark,1).

connected_route(A,B):-
	route(A,B,1),
	write('Distance from '),
	write(A),write("=>"),
	write(B),write("="),
	write(l),write('km'),nl.
	
connected_route(A,C):-
	route(A,B,1),route(B,C,1),
	write(A),write('=>'),
	write(B),write('=>'),
	write(C),nl,
	write('Distance from'),
	write(A),write('=>'),
	write(C),write('='),write('2 Kms.'),nl.
	
connected_route(A,D):-
	route(A,B,1),route(B,C,1),route(C,D,1),
	write(A),write('=>'),
	write(B),write('=>'),
	write(C),write('=>'),
	write(D),nl,
	write('Distance from'),
	write(A),write('=>'),
	write(D),write('='),write('3 Kms.'),nl.