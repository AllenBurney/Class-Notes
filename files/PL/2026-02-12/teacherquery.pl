teaches(X,C):-
teacher(X,C,_,_,_,_);
teacher(X,_,C,_,_,_);
teacher(X,_,_,C,_,_);
teacher(X,_,_,_,C,_);
teacher(X,_,_,_,_,C);
