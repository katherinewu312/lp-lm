This folder contains several miscellaneous items related to parsing.

---

```cyk.py```,```viterbi.py```: implementations of the CYK (supports probabilities) and Viterbi algorithms. CYK is my own dynamic programming implementation, Viterbi uses the NLTK implementation. 

Usage: 

```$ python3 cyk.py <grammar.txt> <sentence.txt>```, 

```$ python3 viterbi.py <grammar.txt> <sentence.txt>```

---

```generate_rules.py```,```parser.pl```,```rules.pl```: a parser generator. Generates a Prolog DCG in rules.pl from a PCFG specified in a plain text file.

Usage: 

1. ```./generate_rules <grammar.txt>```
2. In XSB, load ```[parser].``` and ```[rules].```
3. Query ```pcfg_all/3``` for all possible parse trees and their probabilities, or ```pcfg_max/3``` for the most probable parse tree and its probability

---

```tests/```, ```tests.py```: files for testing the time complexity of Prolog DCGs in the length of input sentences. Tested against NLTK's Viterbi algorithm, on several left-recursive, right-recursive, ambiguous, and unambiguous grammars. Each result is averaged over 10 runs.


Reproducibility of results:

```$ python3 tests.py <flag>```

flag options: ```--lr``` (left-recursive), ```rr``` (right-recursive),```--amb``` (ambiguous),```--unamb``` (unambiguous).

test number options: ```1``` (trivial grammar with 3-10 production rules), ```2``` (grammar with 20-50 production rules), ```3``` (complex grammar with 100+ production rules).









