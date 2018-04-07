#ifndef DBUTIL_H
#define DBUTIL_H

#include <pqxx/pqxx>
#include <iostream>
#include <string>

using namespace pqxx;
using namespace std;

class db_util{

    public:
        db_util();
        ~db_util();
        string* get_verb();
        string* get_adjective();
        string* get_noun();
        string* get_misc();

    private:
        connection* db_conn;
        string* get_generic(string table);
};

#endif
