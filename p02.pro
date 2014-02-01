last_but_one(X, [X, _]).
last_but_one(X, [_ | Rest]) :- last_but_one(X, Rest).
