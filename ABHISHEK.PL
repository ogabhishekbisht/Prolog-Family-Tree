male(abhishek).
male(abhinay).
male(akhilesh).
male(vijay).
male(lakshay).
male(inder).
male(prem).
male(balwant).
male(kuber).
male(darban).


female(manju).
female(govindi).
female(munni).
female(meena).
female(mamta).
female(shruti).
female(alka).
female(vijeta).


father(kuber,abhishek).
father(kuber,abhinay).
father(prem,vijay).
father(prem,vijeta).
father(balwant,alka).
father(balwant,akhilesh).
father(darban,lakshay).
father(darban,shruti).
father(inder,prem).
father(inder,balwant).
father(inder,darban).
father(inder,kuber).


mother(manju,abhinay).
mother(manju,abhishek).
mother(meena,alka).
mother(meena,akhilesh).
mother(munni,vijay).
mother(munni,vijeta).
mother(mamta,lakshay).
mother(mamta,shruti).
mother(govindi,prem).
mother(govindi,balwant).
mother(govindi,darban).
mother(govindi,kuber).


parent(X,Y):- mother(X,Y);father(X,Y).
grandparent(X,Z) :-parent(X,Y),parent(Y,Z).
grandfather(X,Z):-father(X,Y),parent(Y,Z).
grandmother(X,Z):-mother(X,Y),parent(Y,Z).
child(X,Y):- father(Y,X);mother(Y,X).
son(X,Y):-father(Y,X);mother(Y,X),male(X).
daughter(X,Y):-father(Y,X);mother(Y,X),female(X).
sibling(X,Y):-father(A,X),father(A,Y),mother(B,X),mother(B,Y),not(X=Y).
brother(X,Y):-parent(Z,X),parent(V,Y),sibling(Z,V),male(X).
sister(X,Y):-parent(Z,X),parent(V,Y),sibling(Z,V),female(X).
