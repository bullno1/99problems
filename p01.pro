last_elem(X, [X]).
last_elem(X, [_ | Rest]) :- last_elem(X, Rest).
