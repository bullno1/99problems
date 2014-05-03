num_elements([], 0).
num_elements([_ | Rest], Length) :-
	num_elements(Rest, Length2),
	Length is Length2 + 1.
