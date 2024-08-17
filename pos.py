# Script for the words in their corresponding POS files in postags/

from nltk.corpus import wordnet as wn

# Download the NLTK WordNet if necessary
import nltk
nltk.download('wordnet')

adjectives = [word for synset in wn.all_synsets(pos=wn.ADJ,lang="eng") for word in synset.lemma_names()]
adverbs = [word for synset in wn.all_synsets(pos=wn.ADV,lang="eng") for word in synset.lemma_names()]
nouns = [word for synset in wn.all_synsets(pos=wn.NOUN,lang="eng") for word in synset.lemma_names()]
verbs = [word for synset in wn.all_synsets(pos=wn.VERB,lang="eng") for word in synset.lemma_names()]

print(len(adjectives))
print(len(adverbs))
print(len(nouns))
print(len(verbs))

'''
# Write pos words to a new txt file, each on a new line
with open('postags/adjectives.txt', 'w') as file:
    for adj in adjectives:
        file.write(adj + '\n')

with open('postags/adverbs.txt', 'w') as file:
    for adv in adverbs:
        file.write(adv + '\n')
        
with open('postags/nouns.txt', 'w') as file:
    for noun in nouns:
        file.write(noun + '\n')
'''
