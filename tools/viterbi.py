# USAGE: $ python3 viterbi.py <grammar file> <sentence file>

import nltk
from nltk.grammar import PCFG
from nltk.parse import ViterbiParser
import sys

# Reads in a grammar.txt file, 
# returns the content as a string
def get_string(file_name):
    with open(file_name, "r") as f:
        lines = f.readlines()
    res = "".join(lines)
    return res

def main():
    grammar_file = sys.argv[1]
    sentence_file = sys.argv[2]
    
    string = get_string(grammar_file)
    # Read in the sentence in the sentence file, add it to words[]
    words=[]
    with open(sentence_file) as f:
        for line in f:
            line = line.strip()
            
            if len(line) == 0:
                continue
            
            for l in line.strip().split(' '):
                words.append(l)
    f.close()
    
    grammar = PCFG.fromstring(string)
    print("GRAMMAR: ", grammar)
    print("SENTENCE: ", words)
    
    viterbi_parser = nltk.ViterbiParser(grammar)
    for tree in viterbi_parser.parse(words):
        print("VITERBI: ", tree)

if __name__ == "__main__":
    main()