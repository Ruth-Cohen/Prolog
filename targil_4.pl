%---------TARGIL_4--------------
%CHAVA ADLER 315582403
%RUTH SPANIER 316213164
%------------1------------------
%------NO_CUT---------------------
minMax(X,Y,Z,X,Y,Z):- X=<Y, Y=<Z.
minMax(X,Y,Z,X,Z,Y):- X=<Z, Z=<Y.
minMax(X,Y,Z,Z,X,Y):- Z=<X, X=<Y.
minMax(X,Y,Z,Y,X,Z):- X=<Z, Y=<X.
minMax(X,Y,Z,Z,Y,X):- Z=<Y,Y=<X.
minMax(X,Y,Z,Y,Z,X):- Z=<X,Y=<Z.
%------GREEN-----------------------
minMax(X,Y,Z,X,Y,Z):- X=<Y, Y=<Z,!.
minMax(X,Y,Z,X,Z,Y):- X=<Z, Z=<Y,!.
minMax(X,Y,Z,Z,X,Y):- Z=<X, X=<Y,!.
minMax(X,Y,Z,Y,X,Z):- X=<Z, Y=<X,!.
minMax(X,Y,Z,Z,Y,X):- Z=<Y,Y=<X,!.
minMax(X,Y,Z,Y,Z,X):- Z=<X,Y=<Z.
%------RED_CUT---------------------
minMax(X,Y,Z,X,Y,Z):- X=<Y, Y=<Z,!.
minMax(X,Y,Z,X,Z,Y):- X=<Z, Z=<Y,!.
minMax(X,Y,Z,Z,X,Y):- Z=<X, X=<Y,!.
minMax(X,Y,Z,Y,X,Z):- X=<Z,!.
minMax(X,Y,Z,Z,Y,X):- Z=<Y,!.
minMax(X,Y,Z,Y,Z,X).
%-----------2------------
buy(X,Y):-  car(Y) ,price(Y,Z) , Z<1000 .
car(alpha).
car(subaru) .
price(alpha,1100).
price(subaru,990) .
/*
1 קאט מיותר
2 קאט מזיק
3 קאט מזיק
4 קאט מיותר ואם היו עוד מכוניות שמחירם קטן מ1000 זה היה מזיק
5 קאט מזיק
6 קאט מיותר
7 קאט ירוק
8 קאט מיותר
*/

%-----------3------------
intersection([],_,[]).
intersection(_,[],[]).
intersection([H|T],L,[H|RES]):-member(H,L),intersection(T,L,RES).
intersection([H|T],L,RES):-not(member(H,L)),intersection(T,L,RES).
%----------4-------------------
rgbsort(L,[R,G,B]):- rgbsort(L,R,G,B,0,0,0).
rgbsort([red|T],R,G,B,RC,GC,BC):- !,RC1 is RC+1,rgbsort(T,R,G,B,RC1,GC,BC).
rgbsort([green|T],R,G,B,RC,GC,BC):-!,GC1 is GC+1,rgbsort(T,R,G,B,RC,GC1,BC).
rgbsort([blue|T],R,G,B,RC,GC,BC):-!, BC1 is BC+1,rgbsort(T,R,G,B,RC,GC,BC1).
rgbsort([],R,G,B,R,G,B).
%----------5-----------------
flatten([],[]).
flatten([H|T],[H|RES]):-
	atomic(H),!,flatten(T,RES).
flatten([H|T],[N2|N3]):- flatten(H,N2),flatten(T,N3).









