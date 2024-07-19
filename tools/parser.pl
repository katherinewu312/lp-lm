:- table s/4. 

pcfg_all(L,T,P) :- s(T,P,L,[]).

pcfg_max(L,T,P) :- 
    findall(Prob, s(T,Prob,L,[]), Probs), 
    max_list(Probs, P),
    s(T,P,L,[]).

max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, MaxTail),
    (H > MaxTail -> Max = H ; Max = MaxTail).