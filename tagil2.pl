-----------1--------------------
MY-REVERSE(LIST,RES):-
    REVERSE2(LIST,[],RES).

REVERSE2([],ACC,ACC).

REVERSE2([H|T],ACC,RES):-
    REVERSE2(T,[H|ACC],RES).
------------2---------------------
mYPREFIX(S,[H|T]):-
    append(S,[H|T],[S,H|T]).

-------------3--------------------
my_member(X,[X|T]).
my_member(X,[H|T]):-
   my_member(X,T).
---------------4-----------------
my_member2(X,R,Z):- Z=0.
my_member2(X,[H|T],Z):- Z=2,
	del(X,[H|T],R),
	my_member2(X,R,1).
my_member2(X,[H|T],Z):- Z=1,
	del(X,[H|T],R),
	my_member2(X,R,0).
%13 ?- my_member2(2,[1,2,2,4,2],2).
%true
%14 ?-  my_member2(1,[2,2,2,1],2).
% false.
--------------5-----------------
MY-PALINDROM([]).
MY-PALINDROM([X]).
MY-PALINDROM([H|T]):-
  APPEND(R,[H],T),
  MY-PALINDROM(R).
------------6-------------------
my_sorted([]).
my_sorted([H|T]):-
       my_insert(H,T,[H|T]),
       my_sorted(T).

-------------7-------------------
MY-INSERT(X,[],[X]).
MY-INSERT(X,[H|T],[X,H|T]):- X<H.
MY-INSERT(X,[H|T],[H|T1]):-
   MY-INSERT(X,T,T1)




