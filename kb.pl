/* ----- STATEMENTS ----- */

/* subject-verb patterns */
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,_,P2), 		{Sem=..[Y,X]}, {P is P1*P2*0.2}. % subject-verb
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,Z,_,P2), 		{Sem=..[Y,X,Z]}, {P is P1*P2*0.2}. % subject-verb-(noun/adj/adv/prep)
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,Z,W,_,P2), 	{Sem=..[Y,X,Z,W]}, {P is P1*P2*0.2}. % subject-verb-noun-(noun/adj/adv/prep)
s(s(NP,VP),Sem,P) --> np(NP,X,P1), vp(VP,Y,Z,W,V,_,P2), 	{Sem=..[Y,X,Z,W,V]}, {P is P1*P2*0.2}. % subject-verb-noun-noun-(adj/adv/prep)
s(s(s(NP,VP),CONJ,ST),Sem,P) --> np(NP,X,P1), vp(VP,Y,_,P2), conj(CONJ,_Conj,P3), s(ST,S,P4),	{Sem=..[Y,X,S]}, {P is P1*P2*P3*P4*0.2}.


/* nouns */
np(np(NBAR),X,P) 		--> nbar(NBAR,X,P1), {P is P1*0.3}.
np(np(DET,NBAR),X,P) 	--> det(DET,_Det,P1), 	nbar(NBAR,X,P2), {P is P1*P2*0.3}.
nbar(nbar(N),Nx,P) 		--> n(N,Nx,P1), {P is P1*0.1}.
nbar(nbar(PN),Nx,P) 		--> pn(PN,Nx,P1), {P is P1*0.1}.
nbar(nbar(ADJ,NBAR),Sem,P) --> adj(ADJ,X1,P1), nbar(NBAR,X2,P2), {Sem=..[X1,X2]}, {P is P1*P2*0.1}.
nbar(nbar(ADV,NBAR),Sem,P) --> adv(ADV,X1,P1), nbar(NBAR,X2,P2), {Sem=..[X1,X2]}, {P is P1*P2*0.1}.


/* verbs - simple */
vp(vp(VB),Verb,C,P)  		  	--> v(VB,Verb,C,P1), {P is P1*0.09}.

vp(vp(VB,NP),Verb,Np,C,P) 	  	--> v(VB,Verb,C,P1), np(NP,Np,P2), {P is P1*P2*0.09}.
vp(vp(VB,ADJ),Verb,Adj,C,P) 	--> v(VB,Verb,C,P1), adj(ADJ,Adj,P2), {P is P1*P2*0.09}.
vp(vp(VB,ADV),Verb,Adv,C,P) 	--> v(VB,Verb,C,P1), adv(ADV,Adv,P2), {P is P1*P2*0.09}.
vp(vp(VB,PREP),Verb,Prep,C,P) --> v(VB,Verb,C,P1), pp(PREP,Prep,P2), {P is P1*P2*0.09}.

vp(vp(VB,NP1,NP2),Verb,Np1,Np2,C,P) --> v(VB,Verb,C,P1), np(NP1,Np1,P2), np(NP2,Np2,P3), {P is P1*P2*P3*0.09}.
vp(vp(VB,NP,ADJ),Verb,Np,Adj,C,P) --> v(VB,Verb,C,P1), np(NP,Np,P2), adj(ADJ,Adj,P3), {P is P1*P2*P3*0.09}.
vp(vp(VB,NP,ADV),Verb,Np,Adv,C,P) --> v(VB,Verb,C,P1), np(NP,Np,P2), adv(ADV,Adv,P3), {P is P1*P2*P3*0.09}.
vp(vp(VB,NP1,PREP),Verb,Np1,Prep,C,P) --> v(VB,Verb,C,P1), np(NP1,Np1,P2), pp(PREP,Prep,P3), {P is P1*P2*P3*0.09}.

vp(vp(VB,NP1,NP2,ADJ),Verb,Np1,Np2,Adj,C,P) --> v(VB,Verb,C,P1), np(NP1,Np1,P2), np(NP2,Np2,P3), adj(ADJ,Adj,P4), {P is P1*P2*P3*P4*0.09}.
vp(vp(VB,NP1,NP2,ADV),Verb,Np1,Np2,Adv,C,P) --> v(VB,Verb,C,P1), np(NP1,Np1,P2), np(NP2,Np2,P3), adv(ADV,Adv,P4), {P is P1*P2*P3*P4*0.09}.
vp(vp(VB,NP1,NP2,PREP),Verb,Np1,Np2,Prep,C,P) --> v(VB,Verb,C,P1), np(NP1,Np1,P2), np(NP2,Np2,P3), pp(PREP,Prep,P4), {P is P1*P2*P3*P4*0.09}.


/* prepositions */
pp(pp(PREP),Prep,P) 		--> prep(PREP,Prep,P1), {P is P1*0.5}.
pp(pp(PREP,NP),Sem,P)   --> prep(PREP,Prep,P1), np(NP,Np,P2), {Sem=..[Prep,Np]}, {P is P1*P2*0.5}.


/* verbs - with auxillary */
%% vp(vp(AV,ADJ),X,_,P) 	  		--> av(AV,_Av,P1), adj(ADJ,X,P2), {P is P1*P2*0.09}.
%% vp(vp(AV,VB),Verb,C,P)  	  		--> av(AV,_Av,P1), v(VB,Verb,C,P2), {P is P1*P2*0.09}.
%% vp(vp(AV,VB,NP),Verb,X,C,P)   	--> av(AV,_Av,P1), v(VB,Verb,C,P2), np(NP,X,P3), {P is P1*P2*P3*0.09}.
%% vp(vp(AV,VB,ADV),Verb,Adv,C,P)  	--> av(AV,_Av,P1), v(VB,Verb,C,P2), adv(ADV,Adv,P3), {P is P1*P2*P3*0.09}.
%% vp(vp(AV,VB,PREP),Verb,Prep,C,P)  --> av(AV,_Av,P1), v(VB,Verb,C,P2), prep(PREP,Prep,P3), {P is P1*P2*P3*0.09}.
%% vp(vp(AV,VB,PREP,N),Verb,X,C,P)	--> av(AV,_Av,P1), v(VB,Verb,C,P2), prep(PREP,_,P3), n(N,X,P4), {P is P1*P2*P3*P4*0.05}.


/* ----- QUESTIONS ------ */

/* 1: Yes/No questions */
q(q(AV,NP,ADJ),	 Sem,1,P) --> av(AV,_Av,P1), np(NP,N,P2), adj(ADJ,Adj,P3), {Sem=..[Adj,N]}, {P is P1*P2*P3*0.05}.

q(q(AV,NP,V),	 Sem,1,P) --> av(AV,_Av,P1), np(NP,N,P2), v(V,Verb,_,P3), 			   	{Sem=..[Verb,N]}, {P is P1*P2*P3*0.05}.
q(q(AV,NP,V,ADV),Sem,1,P) --> av(AV,_Av,P1), np(NP,N,P2), v(V,Verb,_,P3), adv(ADV,Adv,P4), 	{Sem=..[Verb,N,Adv]}, {P is P1*P2*P3*P4*0.05}.
q(q(AV,NP,V,NP2),Sem,1,P) --> av(AV,_Av,P1), np(NP,N,P2), v(V,Verb,_,P3), np(NP2,N2,P4), 	{Sem=..[Verb,N,N2]}, {P is P1*P2*P3*P4*0.05}.

/* 2: Wh- questions (i.e. what, when, where, who, whom, which, whose, why, how) */
q(q(QW,VB), X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), {Sem=..[Verb,X],Sem}, {P is P1*P2*0.05}.

q(q(QW,VB,NP),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP,N,P3), {Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB,ADJ),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), adj(ADJ,Adj,P3), {Sem=..[Verb,X,Adj],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), adv(ADV,Adv,P3), {Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB,PREP), X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), pp(PREP,Prep,P3), {Sem=..[Verb,X,Prep],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,AV,NP,VB), X, 2, P) --> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP,N,P3), v(VB,Verb,_,P4), {Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*0.05}.

q(q(QW,VB,NP1,NP2),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), np(NP2,N2,P4), {Sem=..[Verb,X,N1,N2],Sem}, {P is P1*P2*P3*P4*0.05}.
q(q(QW,VB,NP1,ADJ),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), adj(ADJ,Adj,P4), {Sem=..[Verb,X,N1,Adj],Sem}, {P is P1*P2*P3*P4*0.05}.
q(q(QW,VB,NP1,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), adv(ADV,Adv,P4), {Sem=..[Verb,X,N1,Adv],Sem}, {P is P1*P2*P3*P4*0.05}.
q(q(QW,VB,NP1,PREP),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), pp(PREP,Prep,P4), {Sem=..[Verb,X,N1,Prep],Sem}, {P is P1*P2*P3*P4*0.05}.
% q(q(QW,AV,NP1,VB,NP2),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), {Sem=..[Verb,N1,X,N2],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,NP1,VB,ADJ),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), adj(ADJ,Adj,P5), {Sem=..[Verb,N1,X,Adj],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,NP1,VB,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), adv(ADV,Adv,P5), {Sem=..[Verb,N1,X,Adv],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,NP1,VB,PREP),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), pp(PREP,Prep,P5), {Sem=..[Verb,N1,X,Prep],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,NP1,VB,NP2),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), {Sem=..[Verb,N1,N2,X],Sem}, {P is P1*P2*P3*P4*P5*0.05}.

q(q(QW,VB,NP1,NP2,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), np(NP2,N2,P4), adv(ADV,Adv,P5), {Sem=..[Verb,X,N1,N2,Adv],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,VB,NP1,NP2,PREP),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), np(NP2,N2,P4), pp(PREP,Prep,P5), {Sem=..[Verb,X,N1,N2,Prep],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,NP1,VB,NP2,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), adv(ADV,Adv,P6), {Sem=..[Verb,N1,X,N2,Adv],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,AV,NP1,VB,NP2,PREP),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), pp(PREP,Prep,P6), {Sem=..[Verb,N1,X,N2,Prep],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,AV,NP1,VB,NP2,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), adv(ADV,Adv,P6), {Sem=..[Verb,N1,N2,X,Adv],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,AV,NP1,VB,NP2,PREP),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), pp(PREP,Prep,P6), {Sem=..[Verb,N1,N2,X,Prep],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,AV,NP1,VB,NP2,NP3),	 X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), np(NP3,N3,P6), {Sem=..[Verb,N1,N2,N3,X],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.


/*
q(q(QW,AV,NP1,VB,NP2,PREP), X,2,P) --> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), np(NP2,N2,P5), prep(PREP,_Prep,P6), {Sem=..[Verb,N1,N2,X],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,AV,NP1,VB,NP2,PREP), X,2,P) --> qw(QW,_Qw,P1), av(AV,_Av,P2), np(NP1,N1,P3), v(VB,Verb,_,P4), prep(PREP,_Prep,P5), np(NP2,N2,P6), {Sem=..[Verb,N1,X,N2],Sem}, {P is P1*P2*P3*P4*P5*P6*0.05}.
q(q(QW,VB,NP1,PREP,NP2), X,2,P) --> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP1,N1,P3), prep(PREP,_Prep,P4), np(NP2,N2,P5), {Sem=..[Verb,X,N1,N2],Sem}, {P is P1*P2*P3*P4*P5*0.05}.


q(q(QW,VB,ADV),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), adv(ADV,Adv,P3), {Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,ADV,VB),	 X, 2, P) 	--> qw(QW,_Qw,P1), adv(ADV,Adv,P2), v(VB,Verb,_,P3), {Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB,NP),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), np(NP,N,P3), {Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB),		 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), {Sem=..[Verb,X],Sem}, {P is P1*P2*0.05}.

q(q(QW,AV,VB),	   X, 2, P)	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	v(VB,Verb,_,P3), 				{Sem=..[Verb,X],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,AV,VB,ADV),  X, 2, P)	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	v(VB,Verb,_,P3), adv(ADV,Adv,P4),	{Sem=..[Verb,X,Adv],Sem}, {P is P1*P2*P3*P4*0.05}.
q(q(QW,AV,NP,VB),   X, 2, P) 	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	np(NP,N,P3), 	v(VB,Verb,_,P4),		{Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*0.05}.
q(q(QW,AV,ADJ),    X, 2, P)  	--> qw(QW,_Qw,P1), av(AV,_Av,P2), 	adj(ADJ,Adj,P3),				{Sem=..[Adj,X],Sem}, {P is P1*P2*P3*0.05}.
q(q(QW,VB,CONJ,ST), X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), conj(CONJ,_Conj,P3), s(ST,S,P4),		{Sem=..[Verb,X,S],Sem}, {P is P1*P2*P3*P4*0.05}.

q(q(QW,AV,NP,VB), X, 2, P) 	--> qw(QW,how,P1), av(AV,_Av,P2),	np(NP,N,P3), 	v(VB,Verb,_,P4),		{Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*0.05}.

q(q(QW,AV,NP,VB,PREP), X,2,P) --> qw(QW,what,P1), av(AV,_Av,P2), np(NP,N,P3), v(VB,Verb,_,P4), prep(PREP,_Prep,P5), {Sem=..[Verb,N,X],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
q(q(QW,AV,VB,PREP,NP), X, 2, P) --> qw(QW,who,P1), av(AV,_Av,P2), v(VB,Verb,_,P3), prep(PREP,_Prep,P4), np(NP,N,P5),  {Sem=..[Verb,X,N],Sem}, {P is P1*P2*P3*P4*P5*0.05}.
*/

% q(q(QW,VB,ADJ),	 X, 2, P) 	--> qw(QW,_Qw,P1), v(VB,Verb,_,P2), adj(ADJ,Adj,P3), {Sem=..[Verb,Temp],Temp=..[Adj,X],Sem}, {P is P1*P2*P3*0.05}.


/* Terminals - parts of speech tags */
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


/* Parsing rules */
:- table s/5. 
:- table q/6.

pcfg_max(L,T,R,P) :- 
    findall(Prob, s(T,R,Prob,L,[]), Probs), 
    max_list(Probs, P),
    s(T,R,P,L,[]).

/* Load the pos words */
:- [load].

/* Tokenizer for inputs */
:- [tokenizer].

/* Add, remove, and query facts from the knowledge base */
add_kb(Str) :- tokenize(Str,L), pcfg_max(L,T,R,P), 
    assert(R), 
    write('The term '),write(R),write(' was added to the KB.'),nl,
    write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.

remove_kb(Str) :- tokenize(Str,L), pcfg_max(L,T,R,P), 
    retract(R), 
    write('The term '),write(R),write(' was removed from the KB.'),nl,
    write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.

/* Yes/no question */
query_kb(Str) :- tokenize(Str,L), q(T,R,1,P,L,[]), 
	(R -> write('Answer: YES') ; write('Answer: NO')), nl,
	write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.

/* Wh- question */
query_kb(Str) :- tokenize(Str,L), q(T,R,2,P,L,[]),
    write('Answer: '),write(R),nl,
	write('Parse tree: '),write(T),nl,
	write('Prob: '),write(P),nl.



/* Helper functions */
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

append([], L, L).
append([H|T], L2, [H|Result]) :-   
    append(T, L2, Result).

max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, MaxTail),
    (H > MaxTail -> Max = H ; Max = MaxTail).

