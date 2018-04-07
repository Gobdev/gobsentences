#include <db_util/db_util.hpp>
#include <gobcode/unicode.hpp>

using namespace std;
using namespace pqxx;

db_util::db_util(){
    /* Connect to database. */
    db_conn = new connection("dbname = gobsentences "
                             "user = gob_user "
                             "password = psqlisstupid "
                             "hostaddr = 127.0.0.1 "
                             "port = 5432");
}

db_util::~db_util(){
    db_conn -> disconnect();
}

string* db_util::get_verb(){
    return get_generic("verbs");
}


string* db_util::get_adjective(){
    return get_generic("adjectives");
}


string* db_util::get_noun(){
    return get_generic("nouns");
}
string* db_util::get_generic(string table){
    /* Create a non-transactional object. */
    nontransaction db_nontransaction(*db_conn);
    /* Execute SQL query */
    result db_result(db_nontransaction.exec("SELECT kanji, hiragana, translation FROM " + table + " ORDER BY random() LIMIT 1;"));
    string* strings = new string[3];
    strings[0] = db_result[0][0].as<string>();
    strings[1] = db_result[0][1].as<string>();
    strings[2] = db_result[0][2].as<string>();
    return strings;
}

string* db_util::get_misc(){
    /* Create a non-transactional object. */
    nontransaction db_nontransaction(*db_conn);
    /* Execute SQL query */
    result db_result(db_nontransaction.exec("SELECT kanji, hiragana, translation, wordtype FROM misc ORDER BY random() LIMIT 1;"));
    string* strings = new string[4];
    strings[0] = db_result[0][0].as<string>();
    strings[1] = db_result[0][1].as<string>();
    strings[2] = db_result[0][2].as<string>();
    strings[3] = db_result[0][3].as<string>();
    return strings;
}

