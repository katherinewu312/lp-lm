# REFERENCE: https://web.stanford.edu/~jurafsky/slp3/C.pdf
# USAGE: $ python3 cyk.py <grammar file> <sentence file>

from collections import defaultdict
import sys
import time

# Input: words -> list, pcfg_rules -> dict
# Output: most probable parse tree -> nested tuples, associated parse probability -> float
# pcfg_rules format -> {'S': [(1.0, ['NP VP']), (0.5, ['PP VP'])], 'NP': [(1.0, ['Vb N'])]}
def cyk_pcfg(pcfg_rules, words):
    n = len(words)
    table = [[defaultdict(lambda: (0.0, None)) for _ in range(n)] for _ in range(n)]

    # Initialization
    for i, word in enumerate(words):
        for nt in pcfg_rules:
            for (prob, terminals) in pcfg_rules[nt]:
                if word in terminals:
                    table[i][i][nt] = (prob, None)  # Store the terminal symbol and its probability
        
    # Probabilistic CKY Algorithm
    for length in range(2, n + 1):
        for i in range(n - length + 1):
            j = i + length - 1
            for k in range(i, j):
                for A in pcfg_rules:
                    for (prob_A, terminals_A) in pcfg_rules[A]:
                        if table[i][k] and table[k+1][j]:
                            for C in table[i][k]:
                                for D in table[k+1][j]:
                                    if str(C + " " + D) in terminals_A: 
                                        prob = prob_A * table[i][k][C][0] * table[k + 1][j][D][0]
                                        if prob > table[i][j][A][0]:
                                            table[i][j][A] = (prob, (C, D, k))
    

    # Reconstruct the most probable parse tree
    def reconstruct_tree(i, j, nt):
        if table[i][j][nt][1] is None:
            return (nt, words[i])
        else:
            C, D, k = table[i][j][nt][1]
            left_subtree = reconstruct_tree(i, k, C)
            right_subtree = reconstruct_tree(k + 1, j, D)
            return (nt, left_subtree, right_subtree)

    # Get the most probable parse tree and its probability
    parse_tree = reconstruct_tree(0, n - 1, 'S')
    parse_probability = table[0][-1]['S'][0]
    
    return parse_tree, parse_probability


# Input: grammar_file -> file name (string), sentence_file -> file name (string)
# Output: pcfg_rules -> dict, words -> list
# Can use output for calling the cyk_pcfg() parsing function
def read_files(grammar_file, sentence_file):
    pcfg_rules = {}
    words = []
    
    # Read in the rules in the grammar file, add them to pcfg_rules
    with open(grammar_file) as f:
        for line in f:
            line = line.strip()
            
            if len(line) == 0:
                continue
            
            entries = line.split('->')
            lhs = entries[0].strip()
            if lhs not in pcfg_rules:
                pcfg_rules[lhs] = []
            
            for rhs in entries[1].split('|'):
                prob = rhs.strip().split(' ')[-1].strip("[]")
                rule = ' '.join(rhs.strip().split(' ')[:-1])
                rule = rule.strip('\'')
                pcfg_rules[lhs].append((float(prob), [rule]))
    f.close()
    
    # Read in the sentence in the sentence file, add it to words[]
    with open(sentence_file) as f:
        for line in f:
            line = line.strip()
            
            if len(line) == 0:
                continue
            
            for l in line.strip().split(' '):
                words.append(l)
    f.close()
    
    return pcfg_rules, words
    

# Input: grammar_file -> file name (string), sentence_file -> file name (string)
# Output: most probable parse tree -> nested tuples, associated parse probability -> float
def CYK(grammar_file, sentence_file):
    pcfg_rules, words = read_files(grammar_file, sentence_file)
    print("GRAMMAR: ", pcfg_rules)
    print("SENTENCE: ", words)
    # Parse the sentence
    return cyk_pcfg(pcfg_rules, words)


# Main 
def main():
    # Using the CYK function
    grammar_file = sys.argv[1]
    sentence_file = sys.argv[2]
    parse_tree, parse_probability = CYK(grammar_file, sentence_file)
    
    '''
    # Using the cyk_pcfg function
    pcfg_rules = {'S': [(1.0, ['NP VP'])], 
                  'NP': [(1.0, ['the'])],
                  'VP': [(1.0, ['cat'])]}
    words = ['the', 'cat']
    parse_tree, parse_probability = cyk_pcfg(pcfg_rules, words)
    '''
    
    print(f'Most Probable Parse Tree: {parse_tree}')
    print(f'Parse Probability: {parse_probability}')

if __name__ == "__main__":
    main()

