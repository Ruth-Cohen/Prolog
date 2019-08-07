targil1 prolog
Chavi adler 315582403
Ruth spanier 316213164

male(yoni).
female(chavi).
married(bila,zeev).
married(ariel, chavi).
father:- parent(X,Y), male(X).
mother:- parent(X,Y),female(X).
son:- parent(X,Y), male(y).
doughter:- parent(X,Y),female(Y).
parents:- parent(X,Y), parent(Z,Y), married(X,Z), X\==Z.



//------------1----------------

1 ?- student(X, history).
X = nili ;
X = ran.

2 ?- student(nili, Y).
Y = history ;
Y = prolog.

3 ?- student(nili, Y), student(dani, Y).
Y = prolog ;
false.

4 ?- student(X, matimatics).
X = ran ;
X = dani.

5 ?- student(yossi, Y).
false.

6 ?- student(X,prolog), student(X,matimatics).
X = dani ;
X = ran ;
false.
/--------------2---------------
student(dani,prolog).
student(nili,history).
student(nili,prolog).
student(ran,matimatics).
student(ran,prolog).
student(ran,history).
student(dani,matimatics).
parent(zeev,chavi).
parent(bila, chavi).
parent(bila, yoni).
parent(zeev, yoni).
male(yoni).
female(chavi).
married(bila,zeev).
married(ariel, chavi).
father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y),female(X).
son(Y,X):- parent(X,Y), male(Y).
doughter(Y,X):- parent(X,Y),female(Y).
parents(X,Z):- parent(X,Y), parent(Z,Y), married(X,Z), X\==Z.
gfather(X,T):- male(X),parent(X,Y),parent(Y,T).
gmother(X,T):-female(X),parent(X,Y),parent(Y,T).
gson(T,X):- male(T),son(T,Y),son(Y,X).
gdoughter(T,X):- female(T),doughter(T,Y),doughter(Y,X).
sibling(X,Y):- parent(Z,X),parent(Z,Y).
uncle(X,Y):- male(X), sibling(X,Z), parent(Z,Y).
cousin(X,Y):- male(X),son(X,T),uncle(T,Y).
brotherinlow(X,Y):- male(X),married(X,Z),sibling(Z,Y).
niece(Y,X):- female(Y),uncle(X,Y).

/----------------3----------------
left_of (pencil, clock).
left_of (clock, butterfly).
left_of (butterfly, fish).
left_of (bicycle, camera).
above(bicycle, pencil).
above(camera, butterfly).
below (pencil, bicycle).
below (butterfly,camera).
right_of (clock,pencil) .
right_of (butterfly,fish) .
right_of (camera,bicycle) .

