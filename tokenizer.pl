tokenize( String, Words):-   
	atom_codes(String, Chars),
    parse_chars( Chars, Words),
    !.
    
parse_chars( [ Char| Chars], [ Word| Words]) :-
    word_char( Char),
	preprocess_char( Char, Char1),
    get_word_chars( [ Char1| Chars], RestChars, WordChars),
    name( Word, WordChars),
    parse_chars( RestChars, Words).
parse_chars( [ Char| Chars], Words) :-
    fill_char( Char),
    parse_chars( Chars, Words).
parse_chars( [ Char| _], []) :-
    end_char(Char).
parse_chars( [], []).

% Convert char to lowercase, if necessary
preprocess_char(Char, Char1) :-
    (   Char >= 65, Char =< 90
    ->  Char1 is Char + 32
    ;   Char1 = Char
    ).

    
get_word_chars( [ Char| Chars], RestChars, [ Char| WordChars]) :-
    word_char( Char), !, 
    get_word_chars( Chars, RestChars, WordChars). 
get_word_chars( Chars, Chars, []). 
        
word_char( Char) :- Char >= 97, Char =< 122.    /* a b ... z */ 
word_char( Char) :- Char >= 65, Char =< 90.     /* A B ... Z */ 
word_char( Char) :- Char >= 48, Char =< 57.     /* 0 1 ... 9 */ 

end_char( 44).      /* ',' */ 
end_char( 46).      /* '.' */ 
end_char( 63).      /* '?' */ 
end_char( 33).      /* '!' */
end_char( 10).      /* LF */

fill_char( 32).    /* blank */
fill_char( 9).      /* tab */