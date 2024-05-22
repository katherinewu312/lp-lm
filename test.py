# Test cases

import nltk
from nltk.grammar import PCFG
from nltk.parse import ViterbiParser
from pyswip import Prolog
from generate_rules import gen_rules
import time
import matplotlib.pyplot as plt
import sys
import os

# Reads in a grammar.txt file containing a test case, 
# returns the content as a string
def get_string(file_name):
    with open(file_name, "r") as f:
        lines = f.readlines()
    res = "".join(lines)
    return res


# ----------------------------------- Left Recursive Grammars --------------------------------------
def lr_grammar(test_num):
    nltk_times = []
    prolog_times = []
    if test_num==1:
        tokens = {0: ['a'],
                  1: ['a','b'],
                  2: ['a','b','c'],
                  3: ['a','b','c','d']}
    if test_num==2:
        tokens = {0: ['a','b'], 
                1: ['a','b','c','d'], 
                2: ['a','b','c','d','e','f'],
                3: ['a','b','c','d','e','f','g','h'],
                4: ['a','b','c','d','e','f','g','h','i','j']}
    if test_num==3:
        tokens = {0: ['a','b','c','d'], 
            1: ['a','b','c','d','e','f','g','h','i','j'],
            2: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r'],
            3: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'],
            4: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','aa','bb','cc','dd','ee','ff','gg','hh','ii','jj']}
        
        
    file_name = f"tests/lr-grammars/test{test_num}.txt"
    string = get_string(file_name)
    grammar = PCFG.fromstring(string)
    rules_file = f"tests/lr-grammars/tmp.pl"
    gen_rules(string, rules_file)
    prolog = Prolog()
    prolog.consult("parser.pl")
    prolog.consult(rules_file)
    
    for i in range(len(tokens)):
        result_list = tokens[i]
        
        # NLTK Test
        start = time.time()
        viterbi_parser = nltk.ViterbiParser(grammar)
        for tree in viterbi_parser.parse(result_list):
            print("VITERBI: ", tree)
        end = time.time()
        nltk_times.append(end-start)

        # Prolog Test
        start = time.time()
        for soln in prolog.query(f"pcfg_max({result_list}, T, P)"):
            print("PROLOG-DCG: ", soln["T"], soln["P"])
        end = time.time()
        prolog_times.append(end-start)
    
        

    # Convert the lists to dictionaries for easier processing in matplotlib
    nltk_times = {index: value for index, value in enumerate(nltk_times)}
    prolog_times = {index: value for index, value in enumerate(prolog_times)}

    print("NLTK times: ", nltk_times)
    print("Prolog times:", prolog_times)

    # Plotting in matplotlib
    plt.plot(list(prolog_times.keys()), list(prolog_times.values()), color='blue', label='Prolog')
    plt.plot(list(nltk_times.keys()), list(nltk_times.values()), color='red', label='Python')

    # Adding labels and legend
    plt.xlabel('Test cases')
    plt.ylabel('Runtimes (in seconds)')
    plt.title('Comparison of Prolog and NLTK Times: \nLEFT-RECURSIVE GRAMMARS')
    plt.legend()
    plt.show()


# ----------------------------------- Right Recursive Grammars --------------------------------------
def rr_grammar(test_num):
    nltk_times = []
    prolog_times = []
    
    if test_num==1:
        tokens = {0: ['a'],
                  1: ['b','a'],
                  2: ['c','b','a'],
                  3: ['d','c','b','a']}
    if test_num==2:
        tokens = {0: ['b', 'a'],
                  1: ['d', 'c', 'b', 'a'],
                  2: ['f', 'e', 'd', 'c', 'b', 'a'],
                  3: ['h', 'g', 'f', 'e', 'd', 'c', 'b', 'a'],
                  4: ['j', 'i', 'h', 'g', 'f', 'e', 'd', 'c', 'b', 'a']}
    if test_num==3:
        tokens = {0: ['b','a'], 
                1: ['d', 'c', 'b', 'a'], 
                2: ['j', 'i', 'h', 'g', 'f', 'e', 'd', 'c', 'b', 'a'],
                3: ['r', 'q', 'p', 'o', 'n', 'm', 'l', 'k', 'j', 'i', 'h', 'g', 'f', 'e', 'd', 'c', 'b', 'a'],
                4: ['z', 'y', 'x', 'w', 'v', 'u', 't', 's', 'r', 'q', 'p', 'o', 'n', 'm', 'l', 'k', 'j', 'i', 'h', 'g', 'f', 'e', 'd', 'c', 'b', 'a']}

    file_name = f"tests/rr-grammars/test{test_num}.txt"
    string = get_string(file_name)
    grammar = PCFG.fromstring(string)
    rules_file = f"tests/rr-grammars/tmp.pl"
    gen_rules(string, rules_file)
    prolog = Prolog()
    prolog.consult("parser.pl")
    prolog.consult(rules_file)
    
    for i in range(len(tokens)):
        result_list = tokens[i]
        
        # NLTK Test
        start = time.time()
        viterbi_parser = nltk.ViterbiParser(grammar)
        for tree in viterbi_parser.parse(result_list):
            print("VITERBI: ", tree)
        end = time.time()
        nltk_times.append(end-start)

        # Prolog Test
        start = time.time()
        for soln in prolog.query(f"pcfg_max({result_list}, T, P)"):
            print("PROLOG-DCG: ", soln["T"], soln["P"])
        end = time.time()
        prolog_times.append(end-start)

    # Convert the lists to dictionaries for easier processing in matplotlib
    nltk_times = {index: value for index, value in enumerate(nltk_times)}
    prolog_times = {index: value for index, value in enumerate(prolog_times)}

    print("NLTK times: ", nltk_times)
    print("Prolog times:", prolog_times)

    # Plotting in matplotlib
    plt.plot(list(prolog_times.keys()), list(prolog_times.values()), color='blue', label='Prolog')
    plt.plot(list(nltk_times.keys()), list(nltk_times.values()), color='red', label='Python')

    # Adding labels and legend
    plt.xlabel('Test cases')
    plt.ylabel('Runtimes (in seconds)')
    plt.title('Comparison of Prolog and NLTK Times \nRIGHT-RECURSIVE GRAMMARS')
    plt.legend()
    plt.show()


# ----------------------------------- Unambiguous Grammars --------------------------------------
def unambiguous_grammar(test_num):
    nltk_times = []
    prolog_times = []
    
    if test_num==1:
        tokens = {0: ['a'],
                  1: ['a','b'],
                  2: ['a','b','c','d']}
    if test_num==2:
        tokens = {0: ['a','b'],
                  1: ['a','b','c','d'],
                  2: ['a','b','c','d','e','f'],
                  3: ['a','b','c','d','e','f','g','h'],
                  4: ['a','b','c','d','e','f','g','h','i','j']}
    if test_num==3:
        tokens = {0: ['a','b','c','d'], 
            1: ['a','b','c','d','e','f','g','h'], 
            2: ['a','b','c','d','e','f','g','h','i','j','k','l'],
            3: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t'],
            4: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']}

    file_name = f"tests/unambiguous-grammars/test{test_num}.txt"
    string = get_string(file_name)
    grammar = PCFG.fromstring(string)
    rules_file = f"tests/unambiguous-grammars/tmp.pl"
    gen_rules(string, rules_file)
    prolog = Prolog()
    prolog.consult("parser.pl")
    prolog.consult(rules_file)
    
    for i in range(len(tokens)):
        result_list = tokens[i]
        
        # NLTK Test
        start = time.time()
        viterbi_parser = nltk.ViterbiParser(grammar)
        for tree in viterbi_parser.parse(result_list):
            print("VITERBI: ", tree)
        end = time.time()
        nltk_times.append(end-start)

        # Prolog Test
        start = time.time()
        for soln in prolog.query(f"pcfg_max({result_list}, T, P)"):
            print("PROLOG-DCG: ", soln["T"], soln["P"])
        end = time.time()
        prolog_times.append(end-start)

    # Convert the lists to dictionaries for easier processing in matplotlib
    nltk_times = {index: value for index, value in enumerate(nltk_times)}
    prolog_times = {index: value for index, value in enumerate(prolog_times)}

    print("NLTK times: ", nltk_times)
    print("Prolog times:", prolog_times)

    # Plotting in matplotlib
    plt.plot(list(prolog_times.keys()), list(prolog_times.values()), color='blue', label='Prolog')
    plt.plot(list(nltk_times.keys()), list(nltk_times.values()), color='red', label='Python')

    # Adding labels and legend
    plt.xlabel('Test cases')
    plt.ylabel('Runtimes (in seconds)')
    plt.title('Comparison of Prolog and NLTK Times: \nUNAMBIGUOUS GRAMMARS')
    plt.legend()
    plt.show()


# ----------------------------------- Ambiguous Grammars --------------------------------------
def ambiguous_grammar(test_num):
    nltk_times = []
    prolog_times = []
    tokens = {0: ['a'], 
            1: ['a','a'], 
            2: ['a','a','a'],
            3: ['a','a','a','a'],
            4: ['a','a','a','a','a']}

    file_name = f"tests/ambiguous-grammars/test{test_num}.txt"
    string = get_string(file_name)
    grammar = PCFG.fromstring(string)
    rules_file = f"tests/ambiguous-grammars/tmp.pl"
    gen_rules(string, rules_file)
    prolog = Prolog()
    prolog.consult("parser.pl")
    prolog.consult(rules_file)
    
    for i in range(len(tokens)):
        result_list = tokens[i]
        
        # NLTK Test
        start = time.time()
        viterbi_parser = nltk.ViterbiParser(grammar)
        for tree in viterbi_parser.parse(result_list):
            print("VITERBI: ", tree)
        end = time.time()
        nltk_times.append(end-start)

        # Prolog Test
        start = time.time()
        for soln in prolog.query(f"pcfg_max({result_list}, T, P)"):
            print("PROLOG-DCG: ", soln["T"], soln["P"])
        end = time.time()
        prolog_times.append(end-start)

    # Convert the lists to dictionaries for easier processing in matplotlib
    nltk_times = {index: value for index, value in enumerate(nltk_times)}
    prolog_times = {index: value for index, value in enumerate(prolog_times)}

    print("NLTK times: ", nltk_times)
    print("Prolog times:", prolog_times)

    # Plotting in matplotlib
    plt.plot(list(prolog_times.keys()), list(prolog_times.values()), color='blue', label='Prolog')
    plt.plot(list(nltk_times.keys()), list(nltk_times.values()), color='red', label='Python')

    # Adding labels and legend
    plt.xlabel('Test cases')
    plt.ylabel('Runtimes (in seconds)')
    plt.title('Comparison of Prolog and NLTK Times: \nAMBIGUOUS GRAMMARS')
    plt.legend()
    plt.show()

def main():
    flag = sys.argv[1]
    if flag == "--lr":
        print("Enter test number: ", end="")
        num = input()
        lr_grammar(int(num))
    if flag == "--rr":
        print("Enter test number: ", end="")
        num = input()
        rr_grammar(int(num))
    if flag == "--unamb":
        print("Enter test number: ", end="")
        num = input()
        unambiguous_grammar(int(num))
    if flag == '--amb':
        print("Enter test number: ", end="")
        num = input()
        ambiguous_grammar(int(num))
    
if __name__ == "__main__":
    main()