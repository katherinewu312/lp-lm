s(s(s(NP,VP),CONJ,ST),Sem) --> np(NP,X), vp(VP,Y,_), conj(CONJ,_Conj), s(ST,S),	{Sem=..[Y,X,S]}.
s(s(NP,VP),Sem) --> np(NP,X), vp(VP,Y,Z,W,_), 	{Sem=..[Y,X,Z,W]}.
s(s(NP,VP),Sem) --> np(NP,X), vp(VP,Y,Z,_), 		{Sem=..[Y,X,Z]}.
s(s(NP,VP),Sem) --> np(NP,X), vp(VP,Y,_), 		{Sem=..[Y,X]}.

np(np(PP,DET,NBAR),X2) 	 --> pp(PP,_X1),  	 det(DET,_Det), nbar(NBAR,X2).
np(np(PREP,DET,NBAR),X2) --> prep(PREP,_X1), det(DET,_Det), nbar(NBAR,X2).
np(np(DET,NBAR,PP),X1) 	 --> det(DET,_Det),  nbar(NBAR,X1), pp(PP,_X2).


np(np(DET,NBAR),X) 		--> det(DET,_Det), 	nbar(NBAR,X).
np(np(PN),X) 			--> pn(PN,X).
np(np(N),X) 			--> n(N,X).

vp(vp(VB),Verb,C)  		  	--> v(VB,Verb,C).
vp(vp(VB,ADV),Verb,Adv,C) 	--> v(VB,Verb,C), adv(ADV,Adv).
vp(vp(VB,PREP),Verb,Prep,C) --> v(VB,Verb,C), prep(PREP,Prep).
vp(vp(VB,ADJ),Verb,Adj,C) 	--> v(VB,Verb,C), adj(ADJ,Adj).
vp(vp(VB,NP),Verb,X,C) 	  	--> v(VB,Verb,C), np(NP,X).
vp(vp(VB,NP1,PREP,NP2),Verb,X1,X2,C) --> v(VB,Verb,C), np(NP1,X1), prep(PREP,_Prep), np(NP2,X2).

vp(vp(AV,ADJ),X,_) 	  		--> av(AV,_Av), adj(ADJ,X).
vp(vp(AV,VB),Verb,C)  	  		--> av(AV,_Av), v(VB,Verb,C).
vp(vp(AV,VB,ADV),Verb,Adv,C)  	--> av(AV,_Av), v(VB,Verb,C), adv(ADV,Adv).
vp(vp(AV,VB,PREP),Verb,Prep,C)  --> av(AV,_Av), v(VB,Verb,C), prep(PREP,Prep).
vp(vp(AV,VB,PREP,N),Verb,X,C)	--> av(AV,_Av), v(VB,Verb,C), prep(PREP,_), n(N,X).
vp(vp(AV,VB,NP),Verb,X,C)   	--> av(AV,_Av), v(VB,Verb,C), np(NP,X).


pp(pp(PREP,NP),Sem) 	--> prep(PREP,Prep), np(NP,X), {Sem=..[Prep,X]}.
pp(pp(DET,NBAR),X) 		--> det(DET,_Det), 	nbar(NBAR,X).

nbar(nbar(N),Nx) 		--> n(N,Nx).
nbar(nbar(ADJ,NBAR),Sem) --> adj(ADJ,X1), nbar(NBAR,X2), {Sem=..[X1,X2]}.

det(det(X),X)	 -->[X], {determiner(X)}.
conj(conj(X),X)	 -->[X], {conjuction(X)}.
pn(pn(X),X)		 -->[X], {pronoun(X)}.
n(n(X),X)		 -->[X], {noun(X)}.
adj(adj(X),X)	 -->[X], {adjective(X)}.
v(v(X),Vx,C) 	 -->[X], {verb(Vx,C,[X],[])}.
av(av(X),X)	 	 -->[X], {averb(X)}.
qw(qw(X),X)		 -->[X], {qword(X)}.
adv(adv(X),X)	 -->[X], {adverb(X)}.
prep(prep(X),X)	 -->[X], {preposition(X)}.


/* Questions */
q(q(QW,AV,NP1,VB,NP2,PREP), X) --> qw(QW,_Qw), av(AV,_Av), np(NP1,N1), v(VB,Verb,_), np(NP2,N2), prep(PREP,_Prep), {Sem=..[Verb,N1,N2,X],Sem}.
q(q(QW,AV,NP1,VB,NP2,PREP), X) --> qw(QW,_Qw), av(AV,_Av), np(NP1,N1), v(VB,Verb,_), prep(PREP,_Prep), np(NP2,N2), {Sem=..[Verb,N1,X,N2],Sem}.
q(q(QW,VB,NP1,PREP,NP2), X) --> qw(QW,_Qw), v(VB,Verb,_), np(NP1,N1), prep(PREP,_Prep), np(NP2,N2), {Sem=..[Verb,X,N1,N2],Sem}.


q(q(QW,VB,ADV),	 X) 	--> qw(QW,_Qw), v(VB,Verb,_), adv(ADV,Adv),					{Sem=..[Verb,X,Adv],Sem}.
q(q(QW,VB,NP),	 X) 	--> qw(QW,_Qw), v(VB,Verb,_), np(NP,N),						{Sem=..[Verb,X,N],Sem}.
q(q(QW,VB,NP),	 X) 	--> qw(QW,_Qw), v(VB,Verb,_), np(NP,N),						{Sem=..[Verb,X,N],Sem}.
q(q(QW,VB),		 X) 	--> qw(QW,_Qw), v(VB,Verb,_), 								{Sem=..[Verb,X],Sem}.

q(q(QW,AV,VB),	   X)	--> qw(QW,_Qw), av(AV,_Av), 	v(VB,Verb,_), 				{Sem=..[Verb,X],Sem}.
q(q(QW,AV,VB,ADV),  X)	--> qw(QW,_Qw), av(AV,_Av), 	v(VB,Verb,_), adv(ADV,Adv),	{Sem=..[Verb,X,Adv],Sem}.
q(q(QW,AV,NP,VB),   X) 	--> qw(QW,_Qw), av(AV,_Av), 	np(NP,N), 	v(VB,Verb,_),		{Sem=..[Verb,N,X],Sem}.
q(q(QW,AV,ADJ),    X)  	--> qw(QW,_Qw), av(AV,_Av), 	adj(ADJ,Adj),				{Sem=..[Adj,X],Sem}.
q(q(QW,VB,CONJ,ST), X) 	--> qw(QW,_Qw), v(VB,Verb,_), conj(CONJ,_Conj), s(ST,S),		{Sem=..[Verb,X,S],Sem}.

q(q(QW,AV,NP,VB), X) 	--> qw(QW,how), av(AV,_Av),	np(NP,N), 	v(VB,Verb,_),		{Sem=..[Verb,N,X],Sem}.

q(q(QW,AV,NP,VB,PREP), X) --> qw(QW,what), av(AV,_Av), np(NP,N), v(VB,Verb,_), prep(PREP,_Prep), {Sem=..[Verb,N,X],Sem}.
q(q(QW,AV,VB,PREP,NP), X) --> qw(QW,who), av(AV,_Av), v(VB,Verb,_), prep(PREP,_Prep), np(NP,N),  {Sem=..[Verb,X,N],Sem}.



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




/* Add, remove, and query facts from the knowledge base */
add_kb(L) :- s(T,R,L,[]), 
    assert(R), 
    write('The fact '),write(R),write(' was added to the KB.'),nl,
    write('Parse tree: '),write(T),nl.

remove_kb(L) :- s(T,R,L,[]), 
    retract(R), 
    write('The fact '),write(R),write(' was removed from the KB.'),nl,
    write('Parse tree: '),write(T),nl.

query_kb(L) :- q(_,R,L,[]),
    write('Answer: '),write(R),nl.



/* Helper functions */
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

append([], L, L).
append([H|T], L2, [H|Result]) :-   
    append(T, L2, Result).

