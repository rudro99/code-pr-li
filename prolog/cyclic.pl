edge(a,b).
edge(b,c).
edge(c,d).
edge(d,e).
edge(e,b).
path(A,B):- edge(_,B),edge(A,_),nextroute(A,B,[]),write(B).
nextroute(A,B,V):-
    edge(A,X),write(A),write('->'),
    not(member(X,B)),
    (   B=X;
    nextroute(X,B,[A|V]);
    write(X)).



