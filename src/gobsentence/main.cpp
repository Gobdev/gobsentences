#include <iostream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <pqxx/pqxx>
#include <db_util/db_util.hpp>
#include <gobcode/unicode.hpp>

using namespace std;

int size1, size2, size3;

int size(string s){
    return unicode::unicode_size(s);
}

int quick_max(string s1, string s2, string s3, string s4){
    return max(max(size(s1), size(s2)), max(size(s3), size(s4)));
}

void print_separator(bool empty){
    char c = empty ? ' ' : '_';
    cout << "  |" << string(22, c) 
         <<   "|" << string(size1 + 4, c) 
         <<   "|" << string(size2 + 4, c) 
         <<   "|" << string(size3 + 4, c) 
         <<   "|"  << endl;
}

void print_word(string intro_string, string* word){
    cout << "  |  " << intro_string << string(18 - size(intro_string), ' ')
         << "  |  " << string(size1 - size(word[0]), ' ') << word[0] 
         << "  |  " << string(size2 - size(word[1]), ' ') << word[1] 
         << "  |  " << string(size3 - size(word[2]), ' ') << word[2] 
         << "  |" << endl;
}

int main(int argc, char* argv[]){
    db_util db;
    srand ( time(NULL) );
    cout << endl << "\033[1mSkapa en mening med orden:" << setfill(' ') << endl;
    bool get_misc = (rand() % 100 > 75);
    
    string* verb = db.get_verb();
    string* adjective = db.get_adjective();
    string* noun = db.get_noun();
    string* misc = get_misc ? db.get_misc() : new string[4];
    
    size1 = quick_max(verb[0], adjective[0], noun[0], misc[0]);
    size2 = quick_max(verb[1], adjective[1], noun[1], misc[1]);
    size3 = quick_max(verb[2], adjective[2], noun[2], misc[2]);

    cout << "\033[0;91m" << "  " << string(size1 + size2 + size3 + 38, '_') << endl;
    print_separator(true);
    print_word("Verb:             ", verb);
    print_separator(false);

    cout << "\033[94m";
    print_separator(true);
    print_word("Adjektiv/adverb:  ", adjective); 
    print_separator(false);
    
    cout << "\033[92m";
    print_separator(true);
    print_word("Substantiv:       ", noun);
    print_separator(false);

    if (get_misc){
        cout << "\033[95m";
        print_separator(true);
        print_word(misc[3], misc);
        print_separator(false);
    }

    cout << "\033[0m" << endl;

    delete[] verb, adjective, noun;
}

