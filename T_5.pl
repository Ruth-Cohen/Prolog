%CHAVA ADLER 315582431
%RUTH SPANIER 316213164
%targil 5

%help function
flatten([],[]):-!.
flatten([Head|Tail],[Head|X]):-atomic(Head),flatten(Tail,X),!.
flatten([Head|Tail],Z):-flatten(Head,X),flatten(Tail,Y),
			append(X,Y,Z).

%number 1

first_last([X|[]],_,X):-!.
first_last([Head|Tail],Y,Z):-first_last(Tail,_,Z),!,Y is Head.

%number 2


%eregilar rikursya
product([],0):-!.%green cut saves tests .
product([X|[]],X):-!.%green cut saves tests .

product([Head|Tail],Product):-product(Tail,X),Product is X*Head.

%recursyat zanav
product1(L,P):-product2(L,P,1).
product2([],RES,RES).
product2([Head|Tail],P,RES):-RES1 is Head*RES,product2(Tail,P,RES1).

%recursya mekoonenet
product3(L,P):-flatten(L,H),product(H,P).

%number 3

kuku(L,N):-reverse(L,N1),kuku_temp(N1,N).
kuku_temp([],[]):-!.
kuku_temp([Head|Tail],Z):- RES is Head*2,kuku_temp(Tail,Z1),
			   append([[Head|[RES]]],Z1,Z).

kuku1(L,N):- reverse(L,S),kuku2(S,N,[]).
kuku2([],RES,RES).
kuku2([Head|Tail],N,L):- RES is Head*2, append(L,[[Head|[RES]]],Z),
	kuku2(Tail,N,Z).

kuku3(L,N):- reverse(L,L1),kuku_temp1(L1,N).
kuku_temp1([],[]):-!.%green cut saves tests .
kuku_temp1([Head|Tail],Z):-atomic(Head),RES is Head*2,kuku_temp1(Tail,Z1),
			   append([[Head|[RES]]],Z1,Z),!.%red cut
kuku_temp1([Head|Tail],Z):-kuku_temp1(Head,Z1),kuku_temp1(Tail,Z2),
                           append([Z1],Z2,Z).


%number 4
flatten_list([],[]):-!.% green cut
flatten_list([Head|Tail],[Head|X]):-atomic(Head),flatten_list(Tail,X),!.%red cut
flatten_list([Head|Tail],Z):-flatten_list(Head,X),flatten_list(Tail,Y),
			append(X,Y,Z).
%znavit
flatten_list1(L,L2):- flatten_list2(L,L1,[]),reverse(L1,L2).
flatten_list2([],Res,Res).
flatten_list2([Head|Tail],L1,ACC):-atomic(Head),
	                           flatten_list2(Tail,L1,[Head|ACC]),!.%red cut
flatten_list2([Head|Tail],L1,ACC):- append(Head,Tail,Z),
				    flatten_list2(Z,L1,ACC).

%number 5
deepReverse([],[]):-!.%green cut
deepReverse([Head|Tail],Z):-atomic(Head),deepReverse(Tail,Z1),append(Z1,[Head],Z)
			    ,!.	%red cut
deepReverse([Head|Tail],Z):- deepReverse(Head,Z1),deepReverse(Tail,Z2),
			     append(Z2,[Z1],Z).



