DO
$body$
BEGIN
   IF NOT EXISTS (
       SELECT * FROM pg_catalog.pg_user WHERE usename = 'gob_user')
   THEN
      CREATE ROLE gob_user LOGIN PASSWORD 'psqlisstupid';
   END IF;
END
$body$;

CREATE TABLE IF NOT EXISTS verbs (
    id                SERIAL PRIMARY KEY,
    kanji             VARCHAR,
    hiragana          VARCHAR NOT NULL,
    translation       VARCHAR NOT NULL
);
CREATE TABLE IF NOT EXISTS adjectives (
    id                SERIAL PRIMARY KEY,
    kanji             VARCHAR,
    hiragana          VARCHAR NOT NULL,
    translation       VARCHAR NOT NULL
);
CREATE TABLE IF NOT EXISTS nouns (
    id                SERIAL PRIMARY KEY,
    kanji             VARCHAR,
    hiragana          VARCHAR NOT NULL,
    translation       VARCHAR NOT NULL
);
CREATE TABLE IF NOT EXISTS misc (
    id                SERIAL PRIMARY KEY,
    kanji             VARCHAR,
    hiragana          VARCHAR NOT NULL,
    translation       VARCHAR NOT NULL,
    wordtype          VARCHAR NOT NULL
);
GRANT ALL PRIVILEGES ON TABLE verbs TO gob_user;
GRANT ALL PRIVILEGES ON TABLE adjectives TO gob_user;
GRANT ALL PRIVILEGES ON TABLE nouns TO gob_user;
GRANT ALL PRIVILEGES ON TABLE misc TO gob_user;

GRANT ALL PRIVILEGES ON DATABASE gobsentences TO gob_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public to gob_user;
