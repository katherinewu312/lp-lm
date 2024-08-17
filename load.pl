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
qword(X):- member(X, [what, which, who, where, why, when, how, whose]).

/* Verb forms for 'to be' */
verb(be,1)-->[am].
verb(be,2)-->[are]. 
verb(be,3)-->[is]. 
verb(be,4)-->[was]. 
verb(be,5)-->[were]. 
verb(be,6)-->[being]. 
verb(be,7)-->[been]. 

/* 
Define verbs:
1 - root form (eat)
2 - past tense (ate)
3 - past participle (eaten)
4 - present participle (eating)
5 - third person (eats)
*/
verb(run,1)-->[run]. verb(run,2)-->[ran]. verb(run,3)-->[ran]. verb(run,4)-->[running]. verb(run,5)-->[runs].
verb(awake,1)-->[awake]. verb(awake,2)-->[awoke]. verb(awake,3)-->[awoken]. verb(awake,4)-->[awaking]. verb(awake,5)-->[awakes].
verb(ask,1)-->[ask]. verb(ask,2)-->[asked]. verb(ask,3)-->[asked]. verb(ask,4)-->[asking]. verb(ask,5)-->[asks].
verb(eat,1)-->[eat]. verb(eat,2)-->[ate]. verb(eat,3)-->[eaten]. verb(eat,4)-->[eating]. verb(eat,5)-->[eats].
verb(give,1)-->[give]. verb(give,2)-->[gave]. verb(give,3)-->[given]. verb(give,4)-->[giving]. verb(give,5)-->[gives].
verb(fly,1)-->[fly]. verb(fly,2)-->[flew]. verb(fly,3)-->[flown]. verb(fly,4)-->[flying]. verb(fly,5)-->[flies].
verb(speak,1)-->[speak]. verb(speak,2)-->[spoke]. verb(speak,3)-->[spoken]. verb(speak,4)-->[speaking]. verb(speak,5)-->[speaks].
