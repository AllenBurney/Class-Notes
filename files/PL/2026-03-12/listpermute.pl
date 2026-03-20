%q14-write a program in Prolog to perform permutation operation in a list
list_delete(X,[X|L1],L1).
list_delete(X,[Y|L2],[Y,L1]):-list_delete(X,L2,L1).	
perm([],[]).
perm(L,[X|P):-list_delete(X,L,L1),perm(L1,P).