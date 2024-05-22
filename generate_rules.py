#!/usr/bin/env python3
'''
Script that reads in a txt file containing a grammar and generates the appropriate DCG grammar rules in Prolog (inside the file rules.pl)
By nature, Prolog's DCG does not support left-recursive grammars, so we convert these grammars to right-recursive grammars which DCG supports

Usage: 
$ python3 generate_rules.py <grammar.txt> 
$ ./generate_rules.py <grammar.txt>
'''

import sys

def gen_terminal_rule(lhs,rule,prob):
    lhs = lhs.lower()
    rhs = rule[0]
    if rhs != 'e':
        res = f"{lhs}({lhs}({rhs}),{prob}) --> [{rhs}]."
    else:
        res = f"{lhs}({lhs}([]),{prob}) --> []."
    return res

def gen_nonterminal_rule(lhs,rule,prob):
    lhs = lhs.lower()
    if len(rule)==1:
        rhs = rule[0].lower()
        res = f"{lhs}({lhs}(T),P) --> {rhs}(T,P1), {{P is P1*{prob}}}."
        return res
    
    ts = []
    count = 1
    for item in rule:
        if item.isupper():
            ts.append(f"T{count}")
            count += 1
        else:
            ts.append(item)
    ts = ",".join(ts)
    res = f"{lhs}({lhs}({ts}),P) --> "
    
    count = 1
    for item in rule:
        if item.isupper():
            res += f"{item.lower()}(T{count},P{count}), "
            count += 1
        else:
            res += f"[{item}], "
            
    ps = "*".join([f"P{i}" for i in range(1, count)])
    res += f"{{P is {ps}*{prob}}}."
    
    return res
    

# For testing
def gen_rules(str_block, rules_file):
    lr_flag = False
    lr_symbols = set()
    lines = str_block.split('\n')
    with open(rules_file, 'w') as f:
        for line in lines:
            line = line.strip()
            
            entries = line.split('->')
            lhs = entries[0].strip()
            
            for rhs in entries[1].split('|'):
                prob = rhs.strip().split(' ')[-1].strip("[]")
                rule = rhs.strip().split(' ')[:-1]
                if lhs == rule[0]: 
                    # check if grammar is left-recursive
                    lr_flag = True
                    lr_symbols.add(lhs.lower())
                terminal = len(rule)==1 and rule[0].islower()
                if terminal:
                    rule = gen_terminal_rule(lhs,rule,prob)
                    f.write(rule + '\n')
                else:
                    rule = gen_nonterminal_rule(lhs,rule,prob)
                    f.write(rule + '\n')
        
        if lr_flag:
            # if grammar is left-recursive, add tabling
            for sym in lr_symbols:
                rule = f":- table {sym}/4."
                f.write(rule + '\n')
            
        f.close()
    

def main():
    grammar_file = sys.argv[1]
    lr_flag = False
    lr_symbols = set()
    with open(grammar_file) as f1:
        with open('rules.pl', 'w') as f2:
            for line in f1:
                line = line.strip()
                
                if len(line) == 0:
                    continue
                
                entries = line.split('->')
                lhs = entries[0].strip()
                
                for rhs in entries[1].split('|'):
                    prob = rhs.strip().split(' ')[-1].strip("[]")
                    rule = rhs.strip().split(' ')[:-1]
                    if lhs == rule[0]: 
                        # check if grammar is left-recursive
                        lr_flag = True
                        lr_symbols.add(lhs.lower())
                    terminal = len(rule)==1 and rule[0].islower()
                    if terminal:
                        rule = gen_terminal_rule(lhs,rule,prob)
                        f2.write(rule + '\n')
                    else:
                        rule = gen_nonterminal_rule(lhs,rule,prob)
                        f2.write(rule + '\n')
            
            if lr_flag:
                # if grammar is left-recursive, add tabling
                for sym in lr_symbols:
                    rule = f":- table {sym}/4."
                    f2.write(rule + '\n')
                
            f2.close()
        f1.close()
        
if __name__ == "__main__":
    main()
