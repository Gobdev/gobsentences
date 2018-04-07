import re

ordlista = []
types = []
with open('temp.txt', 'r') as f:
    for line in f:
        mgrp = re.match(r'([^\t]*)\t([^\t]*)\t([^\t]*)\t([^\t\n]*)', line)
        if mgrp:
            ordlista.append((mgrp.group(1), mgrp.group(2), mgrp.group(3), mgrp.group(4)))
with open('nylista.txt', 'w') as f:
    for line in ordlista:
        kanji       = "" if line[0] is None else line[0]
        hiragana    = "" if line[1] is None else line[1]
        translation = "" if line[2] is None else line[2]
        wordtype    = "" if line[3] is None else line[3]

        table = "misc"
        if "Substabtiv" in wordtype or "substantiv" in wordtype:
            table = "nouns"
        elif "adjektiv" in wordtype or "adverb" in wordtype:
            table = "adjectives"
        elif "verb" in wordtype:
            table = "verbs"
        else:
            f.write("INSERT INTO %s (kanji, hiragana, translation, wordtype) VALUES ('%s', '%s', '%s', '%s');\n"
                     % (table, kanji, hiragana, translation, wordtype))
            if wordtype not in types:
                types.append(wordtype)
            continue
        f.write("INSERT INTO %s (kanji, hiragana, translation) VALUES ('%s', '%s', '%s');\n"
                 % (table, kanji, hiragana, translation))

print types
