:-use_module(library(clpfd)).
/*challenge 5*/
sqaurematrix(E,Sum):-  
		helper(E,Res,Sum),
		labeling([min(Sum)],Res).
helper([[E11,E12,E13],[E21,E22,E23],[E31,E32,E33]],Res,Sum):-
		Res=[E11,E12,E13,E21,E22,E23,E31,E32,E33],
		Res ins 1..50,
		all_different(Res),
		E11+E12+E13 #=Sum,
		E21+E22+E23 #=Sum,
		E31+E32+E33 #=Sum,
		E11+E21+E31 #=Sum,
		E12+E22+E32 #=Sum,
		E13+E23+E33 #=Sum,
		E11+E22+E33 #=Sum,
		E13+E22+E31 #=Sum.
		 
		
