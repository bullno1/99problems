element_at(X, 1, [X | _]).
element_at(X, Pos, [_ | Xs]) :-
	Pos2 is Pos - 1,
	element_at(X, Pos2, Xs).
