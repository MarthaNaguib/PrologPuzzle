:-use_module(library(clpfd)).
/*challenge 1,2,3,4*/
sqaurematrix(E):-   /*ffc Of the variables with smallest domains, the leftmost one participating in most constraints is labeled next.*/
		helper(E,Res),
		labeling([ffc],Res).
helper([[E11,E12,E13],[E21,E22,E23],[E31,E32,E33]],Res):-
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
		 
		
