:-use_module(library(clpfd)).
/*challenge 6, not tested thoroughly*/
sqaurematrix(E,Sum):-  
		helper(E,Res,Sum)->labeling([up],Res);helper2(E,Res,Sum)->labeling([up],Res).
		
helper([[E11,E12,E13],[E21,E22,E23],[E31,E32,E33]],Res,Sum):-
		Res=[E11,E12,E13,E21,E22,E23,E31,E32,E33],
		/*Res ins 1..150,*/
		all_different(Res),
		maplist(child,Res),
		Sum #>21608,
		E11^2+E12^2+E13^2 #=Sum,
		E21^2+E22^2+E23^2 #=Sum,
		E31^2+E32^2+E33^2 #=Sum,
		E11^2+E21^2+E31^2 #=Sum,
		E12^2+E22^2+E32^2 #=Sum,
		E13^2+E23^2+E33 ^2#=Sum,
		E11^2+E22^2+E33^2 #=Sum.
		 
		
helper2([[E11,E12,E13],[E21,E22,E23],[E31,E32,E33]],Res,Sum):-
		Res=[E11,E12,E13,E21,E22,E23,E31,E32,E33],
		/*Res ins 1..150,*/
		all_different(Res),
		
		maplist(child,Res),
		Sum #>21608,
		E11^2+E12^2+E13^2#=Sum,
		E21^2+E22^2+E23^2#=Sum,
		E31^2+E32^2+E33^2 #=Sum,
		E11^2+E21^2+E31^2 #=Sum,
		E12^2+E22^2+E32^2 #=Sum,
		E13^2+E23^2+E33^2 #=Sum,
		E13^2+E22^2+E31^2 #=Sum.
		
child(X):-
	member(X,[1 ,4 ,9 ,16 ,25 ,36 ,49 ,64 ,81 ,100 ,121 ,144]).
		 
p_sqaures([]).
p_sqaures([H|T]):-
		isPerfectSquare(H),
		p_sqaures(T).
isPerfectSquare(X):-
		Y is sqrt(X),
		Z is Y-floor(Y),
		Z==0.0 ->true;false.
		