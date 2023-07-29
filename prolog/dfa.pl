t(0,a,0). t(0,a,1).
t(1,a,1). t(1,b,1). t(1,b,2).
start(0). % 0 is the starting state
favorable(2). % 1 is a favorable state

% Check if a word is accepted.
check_word(S,[]):- favorable(S),write(S).
check_word(S,[H|T]) :- t(S,H,Q),check_word(Q,T),write(H),write(S).

% See if a word is accepted, if yes print path.
start:- write('A NFA that accepts a(a+b)*b \n'),
write('Input a word as a list(Ex: [a,b,b]) :'),
read(W),write('Path followed by NFA-reversed: '),
start(S),check_word(S,W).
