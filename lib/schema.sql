CREATE TABLE series (
  id INTEGER PRIMARY key,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
  );

CREATE TABLE subgenres (
  id INTEGER PRIMARY key,
  name TEXT
  );

CREATE TABLE authors (
  id INTEGER PRIMARY key,
  name TEXT
  );

CREATE TABLE books (
  id INTEGER PRIMARY key,
  title TEXT,
  year INTEGER,
  series_id INTEGER
  );

CREATE TABLE characters (
  id INTEGER PRIMARY key,
  name TEXT,
  species TEXT,
  motto TEXT,
  author_id INTEGER
  );

CREATE TABLE character_books (
  id INTEGER PRIMARY key,
  book_id INTEGER,
  Character_id INTEGER
  );
