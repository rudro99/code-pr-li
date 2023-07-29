edge(a,b).
edge(a,c).
edge(b,c).
edge(b,d).
edge(c,d).
edge(d,e).
edge(e,f).

dfs(Start,Goal,Path):-
    dfs_helper(Start,Goal,[Start],Path).

dfs_helper(Goal,Goal,Accpath,Path):-reverse(Accpath,Path).
dfs_helper(Node,Goal,Accpath,Path):-
    edge(Node,Next),
    \+ member(Next,Accpath),
    dfs_helper(Next,Goal,[Next|Accpath],Path).
