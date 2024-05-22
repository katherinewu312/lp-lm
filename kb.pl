s(s(s(NP,VP),CONJ,ST),Sem,P) --> np(NP,X,P1), vp(VP,Y,_,P2), conj(CONJ,_Conj,P3), s(ST,S,P4),	{Sem=..[Y,X,S]}, {P is P1*P2*P3*P4*0.25}.
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,Z,W,_,P2), 	{Sem=..[Y,X,Z,W]}, {P is P1*P2*0.25}.
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,Z,_,P2), 		{Sem=..[Y,X,Z]}, {P is P1*P2*0.25}.
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,_,P2), 		{Sem=..[Y,X]}, {P is P1*P2*0.25}.

np(np(PP,DET,NBAR),X2,P) 	 --> pp(PP,_X1,P1),  	 det(DET,_Det,P2), nbar(NBAR,X2,P3), {P is P1*P2*P3*0.15}.
np(np(PREP,DET,NBAR),X2,P) --> prep(PREP,_X1,P1), det(DET,_Det,P2), nbar(NBAR,X2,P3), {P is P1*P2*P3*0.15}.
np(np(DET,NBAR,PP),X1,P) 	 --> det(DET,_Det,P1),  nbar(NBAR,X1,P2), pp(PP,_X2,P3), {P is P1*P2*P3*0.15}.
np(np(DET,NBAR),X,P) 		--> det(DET,_Det,P1), 	nbar(NBAR,X,P2), {P is P1*P2*0.15}.
np(np(PN),X,P) 			--> pn(PN,X,P1), {P is P1*0.2}.
np(np(N),X,P) 			--> n(N,X,P1), {P is P1*0.2}.

vp(vp(VB),Verb,C,P)  		  	--> v(VB,Verb,C,P1), {P is P1*0.09}.
vp(vp(VB,ADV),Verb,Adv,C,P) 	--> v(VB,Verb,C,P1), adv(ADV,Adv,P2), {P is P1*P2*0.09}.
vp(vp(VB,PREP),Verb,Prep,C,P) --> v(VB,Verb,C,P1), prep(PREP,Prep,P2), {P is P1*P2*0.09}.
vp(vp(VB,ADJ),Verb,Adj,C,P) 	--> v(VB,Verb,C,P1), adj(ADJ,Adj,P2), {P is P1*P2*0.09}.
vp(vp(VB,NP),Verb,X,C,P) 	  	--> v(VB,Verb,C,P1), np(NP,X,P2), {P is P1*P2*0.09}.
vp(vp(VB,NP1,PREP,NP2),Verb,X1,X2,C,P) --> v(VB,Verb,C,P1), np(NP1,X1,P2), prep(PREP,_Prep,P3), np(NP2,X2,P4), {P is P1*P2*P3*P4*0.05}.

vp(vp(AV,ADJ),X,_,P) 	  		--> av(AV,_Av,P1), adj(ADJ,X,P2), {P is P1*P2*0.09}.
vp(vp(AV,VB),Verb,C,P)  	  		--> av(AV,_Av,P1), v(VB,Verb,C,P2), {P is P1*P2*0.09}.
vp(vp(AV,VB,NP),Verb,X,C,P)   	--> av(AV,_Av,P1), v(VB,Verb,C,P2), np(NP,X,P3), {P is P1*P2*P3*0.09}.
vp(vp(AV,VB,ADV),Verb,Adv,C,P)  	--> av(AV,_Av,P1), v(VB,Verb,C,P2), adv(ADV,Adv,P3), {P is P1*P2*P3*0.09}.
vp(vp(AV,VB,PREP),Verb,Prep,C,P)  --> av(AV,_Av,P1), v(VB,Verb,C,P2), prep(PREP,Prep,P3), {P is P1*P2*P3*0.09}.
vp(vp(AV,VB,PREP,N),Verb,X,C,P)	--> av(AV,_Av,P1), v(VB,Verb,C,P2), prep(PREP,_,P3), n(N,X,P4), {P is P1*P2*P3*P4*0.05}.


pp(pp(PREP,NP),Sem,P) 	--> prep(PREP,Prep,P1), np(NP,X,P2), {Sem=..[Prep,X]}, {P is P1*P2*0.5}.
pp(pp(DET,NBAR),X,P) 		--> det(DET,_Det,P1), 	nbar(NBAR,X,P2), {P is P1*P2*0.5}.

nbar(nbar(N),Nx,P) 		--> n(N,Nx,P1), {P is P1*0.5}.
nbar(nbar(ADJ,NBAR),Sem,P) --> adj(ADJ,X1,P1), nbar(NBAR,X2,P2), {Sem=..[X1,X2]}, {P is P1*P2*0.5}.

det(det(X),X,1.0)	 -->[X], {determiner(X)}.
conj(conj(X),X,1.0)	 -->[X], {conjuction(X)}.
pn(pn(X),X,1.0)		 -->[X], {pronoun(X)}.
n(n(X),X,1.0)		 -->[X], {noun(X)}.
adj(adj(X),X,1.0)	 -->[X], {adjective(X)}.
v(v(X),Vx,C,1.0) 	 -->[X], {verb(Vx,C,[X],[])}.
av(av(X),X,1.0)	 	 -->[X], {averb(X)}.
qw(qw(X),X,1.0)		 -->[X], {qword(X)}.
adv(adv(X),X,1.0)	 -->[X], {adverb(X)}.
prep(prep(X),X,1.0)	 -->[X], {preposition(X)}.


/* Questions */
q(q(QW,AV,NP1,VB,NP2,PREP), X,P) --> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), prep(PREP,_Prep,P6), {Sem=..[Verb,N1,N2,X],Sem}, {P is P1*P2*P3*P4*P5*P6*0.0625}.
q(q(QW,AV,NP1,VB,NP2,PREP), X,P) --> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), prep(PREP,_Prep,P5), np(NP2,N2,P6), {Sem=..[Verb,N1,X,N2],Sem}, {P is P1*P2*P3*P4*P5*P6*0.0625}.
q(q(QW,VB,NP1,PREP,NP2), X,P) --> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), prep(PREP,_Prep,P4), np(NP2,N2,P5), {Sem=..[Verb,X,N1,N2],Sem}, {P is P1*P2*P3*P4*P5*0.0625}.


q(q(QW,VB,ADV),	 X, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), adv(ADV,Adv,P3), {Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,ADV,VB),	 X, P) 	--> qw(QW,_Qw,P1), adv(ADV,Adv,P2), v(VB,Verb,_,P3), {Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,VB,NP),	 X, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP,N,P3), {Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,VB,NP),	 X, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP,N,P3),	{Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,VB),		 X, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), {Sem=..[Verb,X],Sem}, {P is P1*P2*0.0625}.

q(q(QW,AV,VB),	   X, P)	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	v(VB,Verb,_,P3), 				{Sem=..[Verb,X],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,AV,VB,ADV),  X, P)	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	v(VB,Verb,_,P3), adv(ADV,Adv,P4),	{Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*P4*0.0625}.
q(q(QW,AV,NP,VB),   X, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	np(NP,N,P3), 	v(VB,Verb,_,P4),		{Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*0.0625}.
q(q(QW,AV,ADJ),    X, P)  	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	adj(ADJ,Adj,P3),				{Sem=..[Adj,X],Sem}, {P is P1*P2*P3*0.0625}.
q(q(QW,VB,CONJ,ST), X, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), conj(CONJ,_Conj,P3), s(ST,S,P4),		{Sem=..[Verb,X,S],Sem}, {P is P1*P2*P3*P4*0.0625}.

q(q(QW,AV,NP,VB), X, P) 	--> qw(QW,how,P1), av(AV,_Av,P2),	np(NP,N,P3), 	v(VB,Verb,_,P4),		{Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*0.0625}.

q(q(QW,AV,NP,VB,PREP), X,P) --> qw(QW,what,P1), av(AV,_Av,P2), np(NP,N,P3), v(VB,Verb,_,P4), prep(PREP,_Prep,P5), {Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*P5*0.0625}.
q(q(QW,AV,VB,PREP,NP), X, P) --> qw(QW,who,P1), av(AV,_Av,P2), v(VB,Verb,_,P3), prep(PREP,_Prep,P4), np(NP,N,P5),  {Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*P4*P5*0.0625}.



/* Read lines from the files in postags directory */
read_file(FileName, FileContent) :-
	open(FileName, read, F),
	read_loop(F, '', [], FileContent), !.

read_loop(F, CurrentLine, List, FileContent) :-
	get_code(F, CharCode),
	( is_eof(F, CharCode, CurrentLine, List, FileContent)
	; is_newline(F, CharCode, CurrentLine, List, FileContent)
	; append_char(F, CharCode, CurrentLine, List, FileContent)).

is_eof(F, CharCode, CurrentLine, List, FileContent) :-
	CharCode == -1,
	append(List, [CurrentLine], FileContent),
	close(F), !.

is_newline(F, CharCode, CurrentLine, List, FileContent) :-
	CharCode == 10,
	append(List, [CurrentLine], NextList),
	read_loop(F, '', NextList, FileContent).
	
append_char(F, CharCode, CurrentLine, List, FileContent) :-
	char_code(Char, CharCode),
	atom_concat(CurrentLine, Char, NextCurrentLine),
    read_loop(F, NextCurrentLine, List, FileContent).


noun(X) :- read_file('postags/nouns.txt', List), member(X, List).
pronoun(X) :- read_file('postags/pronouns.txt', List), member(X, List).
adjective(X) :- read_file('postags/adjectives.txt', List), member(X, List).
determiner(X) :- read_file('postags/determiners.txt', List), member(X, List).
conjuction(X) :- read_file('postags/conjunctions.txt', List), member(X, List).
adverb(X) :- read_file('postags/adverbs.txt', List), member(X, List).
preposition(X) :- read_file('postags/prepositions.txt', List), member(X, List).
averb(X) :- read_file('postags/averbs.txt', List), member(X, List).
qword(X):- member(X, [who,what,how]).

/* 
Define verbs:
1 - root form (eat)
2 - past tense (ate)
3 - past participle (eaten)
4 - present participle (eating)
5 - third person singular (eats)
*/
verb(run,1)-->[run]. verb(run,2)-->[ran]. verb(run,3)-->[ran]. verb(run,4)-->[running]. verb(run,5)-->[runs].
verb(awake,1)-->[awake]. verb(awake,2)-->[awoke]. verb(awake,3)-->[awoken]. verb(awake,4)-->[awaking]. verb(awake,5)-->[awakes].
verb(ask,1)-->[ask]. verb(ask,2)-->[asked]. verb(ask,3)-->[asked]. verb(ask,4)-->[asking]. verb(ask,5)-->[asks].
verb(eat,1)-->[eat]. verb(eat,2)-->[ate]. verb(eat,3)-->[eaten]. verb(eat,4)-->[eating]. verb(eat,5)-->[eats].
verb(give,1)-->[give]. verb(give,2)-->[gave]. verb(give,3)-->[given]. verb(give,4)-->[giving]. verb(give,5)-->[gives].
verb(fly,1)-->[fly]. verb(fly,2)-->[flew]. verb(fly,3)-->[flown]. verb(fly,4)-->[flying]. verb(fly,5)-->[flies].
verb(speak,1)-->[speak]. verb(speak,2)-->[spoke]. verb(speak,3)-->[spoken]. verb(speak,4)-->[speaking]. verb(speak,5)-->[speaks].


/* From parser.pl */
pcfg_all(L,T,R,P) :- s(T,R,P,L,[]).

pcfg_max(L,T,R,P) :- 
    findall(Prob, s(T,R,Prob,L,[]), Probs), 
    max_list(Probs, P),
    s(T,R,P,L,[]).

max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, MaxTail),
    (H > MaxTail -> Max = H ; Max = MaxTail).


/* Add, remove, and query facts from the knowledge base */
add_kb(L) :- pcfg_max(L,T,R,P), 
    assert(R), 
    write('The fact '),write(R),write(' was added to the KB.'),nl,
    write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.

remove_kb(L) :- pcfg_max(L,T,R,P), 
    retract(R), 
    write('The fact '),write(R),write(' was removed from the KB.'),nl,
    write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.

query_kb(L) :- q(_,R,P,L,[]),
    write('Answer: '),write(R),nl.



/* Helper functions */
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

append([], L, L).
append([H|T], L2, [H|Result]) :-   
    append(T, L2, Result).

