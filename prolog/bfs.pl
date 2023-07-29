edge(a,b).
edge(a,c).
edge(b,c).
edge(b,d).
edge(c,d).
edge(d,e).
edge(e,f).

bfs(Start,Goal,Path) :-
    bfs_queue([[Start]],Goal,Revpath),
    reverse(Revpath,Path).

bfs_queue([[Node|Path]|_],Node,[Node|Path]).
bfs_queue([[Node|Path]|Rest],Goal,Finalpath):-
    findall([Next,Node|Path],
            (edge(Node,Next), \+ member(Next,[Node|Path])),
            Nextpaths),
    append(Rest,Nextpaths,UpdatedQueue),
    bfs_queue(UpdatedQueue,Goal,Finalpath).
bfs_queue([_|Rest],Goal,Path):-
    bfs_queue(Rest,Goal,Path).



