% Facts
breed(breed1).
breed(breed2).
breed(breed3).

color(brown).
color(black).
color(red).

female(jimmy, breed1, red).
female(bob, breed2, brown).
female(chik, breed2, black).
female(queen, breed3, brown).

male(tom, breed1, red).
male(jenny, breed1, black).
male(roy, breed3, black).
male(sus, breed3, brown).

parent(queen, tom).
parent(sus, tom).
parent(queen, jenny).
parent(sus, jenny).
parent(jimmy, roy).
parent(tom, roy).
parent(bob, chik).
parent(jenny, chik).

% Rules
mother(X,Y):- parent(X,Y), female(X), X\==Y.
father(X,Y):- parent(X,Y), male(X), X\==Y.
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\==Y.



















