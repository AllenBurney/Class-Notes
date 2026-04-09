Q8: Intersection of 2 Lists
% Intersection of 2 Lists
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
intersection([], _, []).
intersection([H|T], L2, [H|R]) :-
member(H, L2),
intersection(T, L2, R).
intersection([H|T], L2, R) :-
\+ member(H, L2),
intersection(T, L2, R).


Q9: Even or Odd Length of List
% Even or Odd Length of List
even_length([]).
even_length([_,_|T]) :- even_length(T).
odd_length([_]).
odd_length([_,_|T]) :- odd_length(T).


Q10: Permutation of a List
% Permutation of a List
insert(X, L, [X|L]).
insert(X, [H|T], [H|R]) :- insert(X, T, R).
perm([], []).
perm([H|T], R) :-
perm(T, RT),
insert(H, RT, R).


Q11: Product of Elements in a List
% Product of Elements in a List
product([], 1).
product([H|T], P) :-
product(T, P1),
P is H * P1.


Q12: Reverse a List
% Reverse a List
reverse_list([], []).
reverse_list([H|T], R) :-
reverse_list(T, RT),
append(RT, [H], R).
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).


Q13: Union of 2 Lists
% Union of 2 Lists
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
union([], L, L).
union([H|T], L2, R) :-
member(H, L2),
union(T, L2, R).
union([H|T], L2, [H|R]) :-
\+ member(H, L2),
union(T, L2, R).


Q14: Maximum Length of Two Lists
% Maximum Length of Two Lists
length_list([], 0).
length_list([_|T], N) :-
length_list(T, N1),
N is N1 + 1.
max_length(L1, L2, Max) :-
length_list(L1, N1),
length_list(L2, N2),
(N1 >= N2 -> Max = N1 ; Max = N2).


Q15: Minimum Length of Two Lists
% Minimum Length of Two Lists
length_list([], 0).
length_list([_|T], N) :-
length_list(T, N1),
N is N1 + 1.
min_length(L1, L2, Min) :-
length_list(L1, N1),
length_list(L2, N2),
(N1 =< N2 -> Min = N1 ; Min = N2)

%vertex
vertex(a).
vertex(b).
vertex(c).
vertex(d).
vertex(e).

%edge
edge(a,b).
edge(b,c).
edge(c,d).
edge(c,a).

%NO_of_vertices
num_vertex(N):-
	findall(V,vertex(V),L),
	length(L,N).
	
%NO_of_edges
num_edges(N):-
	findall((X,Y),edge(X,Y),L),
	length(L,N).

%Length_of_edge
path(X,Y,[X,Y]):-
	edge(X,Y).
path(X,Y,[X|T]):-
	edge(X,G),
	path(G,Y,T).
path_length(X,Y,N):-
	path(X,Y,P),
	length(P,L),
	N is L-1 .
	
%Cycle_Detection
cycle(V):-
	path(V,V,P),
	length(P,N),
	N>1 .
	
%indegree
indegree(V,N):-
	findall(X,edge(X,V),L),
	length(L,N).

%outdegree
outdegree(V,N):-
	findall(X,edge(V,X),L),
	length(L,N).
	
%degree
degree(V,N):-
	indegree(V,I),
	outdegree(V,O),
	N is I+O.
	
%pendant
pendant(V):-
	vertex(V),
	degree(V,1).

%isolated(V):-
	vertex(V),
	degree(V,0).
	

