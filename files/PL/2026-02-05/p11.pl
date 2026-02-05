list_sum([],0).
list_sum([Head|Tail],Sum):-
	list_sum(Tail, TailSum),
    Sum is Head+TailSum.
