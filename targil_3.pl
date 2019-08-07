%targil_3
%Chavi Adler 315582403
%Ruth Spanier 316213164
%--------1a--------------
sum(1,1).
sum(N,RES):- N>1, N1 is N-1,
   sum(N1,RES1), RES is RES1+N.
%--------1b-------------
sumDigits(0,0).
sumDigits(Num,Sum):- Num1 is Num mod 10, Num2 is Num//10,
	sumDigits(Num2,Sum1),Sum is Sum1 + Num1.
%--------2a----------------
listNum(0,[]).
listNum(Num,[Num1|List]):- Num>0,Num1 is Num mod 10, Num2 is Num//10,
	listNum(Num2,List).
%-------2b----------------
num(R,L):- num(R,1,L).
num([],_,0).
num([H|T],N,L1):- N1 is N*10,
	num(T,N1,L),L1 is N*H+L.
%---------2c---------------
oposite(Num,Revnum):- listNum(Num,L),mY_REVERSE(L,L1),num(L1,Revnum).

%-------help function--------------
mY_REVERSE(LIST,RES):-
    rEVERSE2(LIST,[],RES).

rEVERSE2([],ACC,ACC).

rEVERSE2([H|T],ACC,RES):-
    rEVERSE2(T,[H|ACC],RES).
%--------------3a-------------------------

my_member(X,[X|_]).
my_member(X,[_|T]):- my_member(X,T).

intersection([],_,[]).
intersection([H|T],L2,[H|Z]):-my_member(H,L2),
	intersection(T,L2,Z).
intersection([_|T],L2,Z):-
	intersection(T,L2,Z).
%-----------------3b-------------------------
minus([],_,[]).
minus([H|T],L2,Z):-my_member(H,L2),
	minus(T,L2,Z).
minus([H|T],L2,[H|Z]):-
	minus(T,L2,Z).
