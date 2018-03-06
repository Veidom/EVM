female(ann).
female(july).
female(mary).
female(tatyana).
male(ivan).
male(petr).
male(andrew).
male(vasily).

unique([]):-true.
unique([X|Y]):-
    not(member(X,Y)),unique(Y).
solve(Solution):-
    Solution = [couple(X,Xwoman),couple(Y,Ywoman),couple(Z,Zwoman),couple(W,Wwoman)],
    male(X),male(Y),male(Z),male(W), unique([X,Y,Z,W]),
    female(Xwoman),female(Ywoman),female(Zwoman),female(Wwoman), unique([Xwoman,Ywoman,Zwoman,Wwoman]),
    not((not(member(couple(ivan,ann),Solution)),not(member(couple(ivan,july),Solution)))),
    not((member(couple(petr,ann),Solution),member(couple(ivan,july),Solution))),
    not((not(member(couple(vasily,mary),Solution)),not(member(couple(andrew,july),Solution)))),
    not((member(couple(petr,july),Solution),not(member(couple(ivan,tatyana),Solution)))),
    not((not(member(couple(petr,mary),Solution)),(member(couple(ivan,tatyana),Solution)))),
    not((member(couple(andrew,july),Solution),not(member(couple(ivan,mary),Solution)))).



