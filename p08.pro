compress([], []).
compress([X], [X]).
compress([X, X | Xs], Compressed) :- compress([X | Xs], Compressed).
compress([X, X2 | Xs], [X, X2 | Ys]) :-
	X =\= X2,
	compress([X2 | Xs], [X2 | Ys]).
