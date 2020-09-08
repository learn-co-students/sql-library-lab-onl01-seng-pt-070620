-- schema for fantasy library
-- all schemas need the following:
--  PRIMARY KEY on the id
--  series table needs title and should belong to an author and sub-genre
--  sub-genres table needs name
--  authors table needs name
--  books table needs title and year and should belong to a series
--  characters table needs name, motto, species and shoudl belong to an author
--  books table has many characters and characters are in many books in a series
CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER
);

CREATE TABLE subgenres (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id INTEGER
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name TEXT,
    species TEXT,
    motto TEXT,
    author_id INTEGER
);

CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
);