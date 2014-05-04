flatten([], []).
flatten([X | Xs], Flattened) :-
	is_list(X),
	flatten(X, FlattenedHead),
	begins_with(FlattenedHead, Flattened, Tail),
	flatten(Xs, Tail).
flatten([X | Xs], [X | Rest]) :-
	not(is_list(X)),
	flatten(Xs, Rest).

begins_with([], Tail, Tail).
begins_with([X | Xs], [X | Ys], Tail) :- begins_with(Xs, Ys, Tail).
