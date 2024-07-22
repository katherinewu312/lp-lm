# LP-LM: No Hallucinations in Question Answering with Logic Programming

This repo contains the code for our paper, "LP-LM: No Hallucinations in Question Answering with Logic Programming", by Katherine Wu and Yanhong A. Liu.

LP-LM is a system designed to ground answers to questions in known facts contained in a knowledge base facilitated through semantic parsing in Prolog to produce answers that are always reliable and correct.

# English sentence patterns
We outline the types of English sentences that LP-LM currently supports. Extending LP-LM to support other sentence types is straightforward. 

There are four types of sentences: simple, compound, complex, and compound-complex. Currently, LP-LM does not support complex nor compound-complex sentences, but this is part of our future work. 

There are declarative, interrogative, imperative, and exclamatory sentences. LP-LM is primarily designed to work on declarative and interrogative sentences, as its purpose is reliable and logical question answering.

An English sentence has two parts: a subject and a verb. Once parsed, the verb part of the sentence serves as the Prolog functor, with the remaining parts of the sentence serving as arguments of the functor. 

LP-LM supports the following sentence patterns. These patterns encompass the prominent structures of simple declarative sentences in English:

## 1 functor + 1 argument
### 1. subject-verb &rarr; verb(subject)

ex. She talks &rarr; talk(she), The very gray cat sleeps &rarr; sleep(very(gray(cat)))

## 1 functor + 2 arguments
### 1. subject-verb-noun &rarr; verb(subject, noun)

ex. The student solved the problem &rarr; solve(student,problem), The small child is a genius &rarr; be(small(child),genius)


### 2. subject-verb-adjective &rarr; verb(subject, adj)

ex. The flowers are beautiful &rarr; be(flowers,beautiful), The very warm soup smells delicious &rarr; smell(very(warm(soup)),delicious)


### 3. subject-verb-adverb &rarr; verb(subject, adv)

ex. She speaks loudly &rarr; speak(she,loudly), The creative chef cooked methodically &rarr; cook(creative(chef),methodically)


### 4. subject-verb-preposition &rarr; verb(subject,prep)

ex. Tom lives nearby &rarr; live(Tom,nearby), The cat sat on the mat &rarr; sit(cat,on(mat))


## 1 functor + 3 arguments
### 1. subject-verb-noun-noun &rarr; verb(subject,noun,noun)

ex. They elected him president &rarr; elect(they,him,president), The family offered the guests some drinks &rarr; offer(family,guests,drinks)

### 2. subject-verb-noun-adjective &rarr; verb(subject,noun,adj)

ex. Ronny painted his car black &rarr; paint(Ronny,car,black), He called the situation strange &rarr; call(he,situation,strange)

### 3. subject-verb-noun-adverb &rarr; verb(subject,noun,adv)

ex. She painted the room aggressively &rarr; paint(she,room,aggressively), The black dog ate the food innocently &rarr; eat(black(dog),food,innocently)

### 4. subject-verb-noun-preposition &rarr; verb(subject,noun,prep)

ex. His parents bought a computer for him &rarr; buy(parents,computer,for(him)), She placed the vase on the tall table &rarr; place(she,vase,on(tall(table)))

## 1 functor + 4 arguments
### 1. subject-verb-noun-noun-adverb &rarr; verb(subject,noun,noun,adv)

ex. She gave me a present yesterday &rarr; give(she,me,present,yesterday), He showed the class his project bravely &rarr; show(he,class,project,bravely)

    
### 2. subject-verb-noun-noun-prep &rarr; verb(subject,noun,noun,prep)

ex. He showed the class his project by the lake &rarr; show(he,class,project,by(lake)), My best friend sent me a long letter before sunset &rarr; send(best(friend),me,long(letter),before(sunset))


## Notes:
* Subject is a noun
* Nouns include pronouns
* Nouns can be prepended by one or more adjectives, adverbs, and/or a determiner
* Determiners are not included in the Prolog term
* Root form of verb is always used as Prolog functor

# English question patterns
LP-LM supports both yes/no and wh- questions. Below are the types of question patterns that are currently suported, as well as their converstions to a Prolog term so that unification can be performed. The examples here correspond to the examples in the previous section.

## 1 functor + 1 argument: subject-verb
### 1. Query about subject: qw-verb &rarr; verb(X)
ex. Who talks &rarr; talk(X), What sleeps &rarr; sleep(X)

## 1 functor + 2 arguments: subject-verb-{noun,adj,adv,prep}
### 1. Query about subject: qw-verb-{noun,adj,adv,prep} &rarr; verb(X,{noun,adj,adv,prep})

ex. Who solved the problem &rarr; solve(X,problem), What are beautiful &rarr; be(X,beautiful), Who speaks loudly &rarr; speak(X,loudly), Who lives nearby &rarr; live(X,nearby)

### 2. Query about {noun,adj,adv,prep}: qw-verb-subject, qw-aux verb-subject-verb &rarr; verb(subject,X)

ex. What is the small child &rarr; be(small(child),X), How are the flowers &rarr; be(flowers,X), How does she speak &rarr; speak(she,X), Where does Tom live &rarr; live(Tom,X)

## 1 functor + 3 arguments: subject-verb-noun-{noun,adj,adv,prep}

### 1. Query about subject: qw-verb-noun-{noun,adj,adv,prep} &rarr; verb(X,noun,{noun,adj,adv,prep})

ex. Who elected him president &rarr; elect(X,him,president), Who painted his car black &rarr; paint(X,car,black), What ate the food innocently &rarr; eat(X,food,innocently), Who bought a computer for him &rarr; buy(X,computer,for(him))

### 2. Query about noun: qw-aux verb-subject-verb-{noun/adj/adv/prep} &rarr; verb(subject,X,{noun,adj,adv,prep})

ex. Who did they elect president &rarr; elect(they,X,president), What did Ronny paint black &rarr; paint(Ronny,X,black), What did she paint aggresively &rarr; paint(she,X,aggressively), What did his parent buy for him &rarr; buy(parents,X,for(him))

### 3. Query about {noun,adj,adv,prep}: qw-aux verb-subject-verb-noun &rarr; verb(subject,noun,X)

ex. What did they elect him &rarr; elect(they,him,X), What did Ronny paint his car &rarr; paint(Ronny,car,X), How did she paint the room &rarr; paint(she,room,X), Why did his parents buy a computer &rarr; buy(parents,computer,X)


## 1 functor + 4 arguments: subject-verb-noun-noun-{adv,prep}

### 1. Query about subject: qw-verb-noun-noun-{adv,prep} &rarr; verb(X,noun,noun,{adv,prep})

ex. Who gave me a present yesterday &rarr; give(X,me,present,yesterday), Who showed the class his project by the lake &rarr; show(X,class,project,by(lake))

### 2. Query about nouns: qw-aux verb-subject-verb-noun-{adv,prep} &rarr; verb(subject,X,noun,{adv,prep}), verb(subject,noun,X,{adv,prep})

ex. Who did she give a present yesterday &rarr; give(she,X,present,yesterday), What did she give me yesterday &rarr; give(she,me,X,yesterday), Who did he show his project by the lake &rarr; show(he,X,project,by(lake)), What did he show his class by the lake &rarr; show(he,class,X,by(lake))

### 3. Query about {adv,prep}: qw-aux verb-subject-verb-noun-noun &rarr; verb(subject,noun,noun,X)

ex. When did she give me the present &rarr; give(she,me,present,X), Where did he show the class his project &rarr; show(he,class,project,X)





# Usage
Dependencies: XSB Prolog Version 5.0 (http://xsb.sourceforge.net/)

1. Update part-of-speech files in ```postags/``` to include any words of your choice.
2. Open XSB and load the ```kb.pl``` file.
3. Add facts via ```add_kb/1```, remove facts via ```remove_kb/1```, or query facts via ```query_kb/1```. Punctuation marks are not necessary.




