list_product([], 1).
list_product([Head|Tail], Product) :-
    list_product(Tail, TailProduct),
    Product is Head * TailProduct.
