# LP-LM: No Hallucinations in Question Answering with Logic Programming

This repo contains the code for our paper, "LP-LM: No Hallucinations in Question Answering with Logic Programming", by Katherine Wu and Yanhong A. Liu.

LP-LM is a system designed to ground answers to questions in known facts contained in a knowledge base facilitated through semantic parsing in Prolog to produce answers that are always reliable and correct.

# English sentence patterns
We outline the types of English sentences that LP-LM currently supports. Extending LP-LM to support other sentence types is straightforward. 

There are four types of sentences: simple, compound, complex, and compound-complex. Currently, LP-LM does not support complex nor compound-complex sentences, but is part of our future work. 

There are declarative, interrogative, imperative, and exclamatory sentences. LP-LM is primarily designed to work on declarative and interrogative sentences, as its purpose is reliable and logical question answering.

An English sentence has two parts: a subject and a verb. Once parsed, the verb part of the sentence serves as the Prolog functor, with the remaining parts of the sentence serving as arguments of the functor. We have the following sentence patterns which encompass the most notable structures of simple declarative sentences:

## 1 functor + 1 argument
1. subject-verb -> verb(subject)

    ex. She talks -> talk(she), The very gray cat sleeps -> sleep(very(gray(cat)))

    * Query about subject: who talks -> talk(X)

    * Query about yes/no: does she talk -> talk(she)

## 1 functor + 2 arguments
1. subject-verb-noun -> verb(subject, noun)

    ex. The student solved the problem -> solve(student, problem), The small child is a genius -> be(small(child), genius)

    * Query about subject: who solved the problem -> solve(X,problem)

    * Query about noun: what did the student solve -> solve(student,X)

2. subject-verb-adjective -> verb(subject, adj)

    ex. The flowers are beautiful -> be(flowers,beautiful), The very warm soup smells delicious -> smell(very(warm(soup)),delicious)

    * Query about subject: what are beautiful -> be(X,beautiful)

    * Query about adjective: how are the flowers -> be(flowers,X)

3. subject-verb-adverb -> verb(subject, adv)

    ex. She speaks loudly -> speak(she,loudly), The creative chef cooked methodically -> cook(creative(chef),methodically)

    * Query about subject: who speaks loudly -> speak(X,loudly)

    * Query about adverb: how does she speak -> speak(she,X)


4. subject-verb-preposition -> verb(subject,prep)

    ex. Tom lives nearby -> live(Tom,nearby), The cat sat on the mat -> sit(cat,on(mat))

    * Query about subject: who lives nearby -> live(X,nearby)

    * Query about preposition: where does Tom live -> live(Tom,X)

    * Query about noun in preposition: what does the cat sit on -> sit(cat,on(X))


## 1 functor + 3 arguments
1. subject-verb-noun-noun -> verb(subject,noun,noun)

    ex. They elected him president -> elect(they,him,president), The family offered the guests some drinks -> offer(family,guests,drinks)

    * Query about subject: who elected him president -> elect(X,him,president)

    * Query about indirect noun: who did they elect president -> elect(they,X,president)

    * Query about direct noun: what did they elect him -> elect(they,him,X)

2. subject-verb-noun-adjective -> verb(subject,noun,adj)

    ex. Ronny painted his car black -> paint(Ronny,car,black), He called the situation strange -> call(he,situation,strange)

    * Query about subject: who painted his car black -> paint(X,car,black)

    * Query about noun: what did Ronny paint black -> paint(Ronny,X,black)

    * Query about adjective: what did Ronny paint his car -> paint(Ronny,car,X)

3. subject-verb-noun-adverb -> verb(subject,noun,adv)

    ex. She painted the room aggressively -> paint(she,room,aggressively), The black dog ate the food innocently -> bark(black(dog),food,innocently)

    * Query about subject: who painted the room aggresively -> paint(X,room,aggressively)

    * Query about noun: what did she paint aggresively -> paint(she,X,aggressively)

    * Query about adjective: how did she paint the room -> paint(she,room,X)

4. subject-verb-noun-preposition -> verb(subject,noun,prep)

    ex. His parents bought a computer for him -> buy(parents,computer,for(him)), She placed the vase on the tall table -> place(she,vase,on(tall(table)))

    * Query about subject: who bought a computer for him -> buy(X,computer,for(him))

    * Query about noun: what did his parent buy for him -> buy(parents,X,for(him))

    * Query about preposition: why did his parents buy a computer -> buy(parents,computer,X)

    * Query about noun in preposition: who did his parents buy a computer for -> buy(parents,computer,for(X))

## 1 functor + 4 arguments
1. subject-verb-noun-noun-adverb -> verb(subject,noun,noun,adv)

    ex. She gave me a present yesterday -> give(she,me,present,yesterday), He showed the class his project bravely -> show(he,class,project,bravely)

    * Query about subject: who gave me a present yesterday -> give(X,me,present,yesterday)

    * Query about indirect noun: who did she give a present yesterday -> give(she,X,present,yesterday)

    * Query about direct noun: what did she give me yesterday -> give(she,me,X,yesterday)

    * Query about adverb: when did she give me the present -> give(she,me,present,X)

    
2. subject-verb-noun-noun-prep -> verb(subject,noun,noun,prep)

    ex. He showed the class his project by the lake -> show(he,class,project,by(lake)), My best friend sent me a long letter before sunset -> send(best(friend),me,long(letter),before(sunset))

    * Query about subject: who showed the class his project by the lake -> show(X,class,project,by(lake))

    * Query about indirect noun: who did he show his project by the lake -> show(he,X,project,by(lake))

    * Query about direct noun: what did he show his class by the lake -> show(he,class,X,by(lake))

    * Query about preposition: where did he show the class his project -> show(he,class,project,X)

    * Query about noun in preposition: where did he show the class his project by -> show(he,class,project,by(X))


## Notes:
* Subject is a noun
* Nouns include pronouns
* Nouns can be prepended by one or more adjectives, adverbs, and/or a determiner
* Determiners are not included in the Prolog knowledge representation term


# Usage
Dependencies: XSB Prolog Version 5.0 (http://xsb.sourceforge.net/)

1. Update part-of-speech files in ```postags/``` to include any words of your choice.
2. Open XSB and load the ```kb.pl``` file.
3. Add facts via ```add_kb/1```, remove facts via ```remove_kb/1```, or query facts via ```query_kb/1```. Punctuation marks are not necessary.




