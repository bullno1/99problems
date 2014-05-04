reversed(List, Reversed) :- reversed1(List, Reversed, []).

reversed1([], Reversed, Reversed).
reversed1([X | Xs], Reversed, Acc) :- reversed1(Xs, Reversed, [X | Acc]).
