INSERT INTO series (title, author_id, subgenre_id) VALUES ("Harry Potter", 1, 1);
INSERT INTO series (title, author_id, subgenre_id) VALUES ("The Lord of the Rings", 2, 2);

INSERT INTO books (title, year, series_id) VALUES ("Philosopher's Stone", 1997, 1);
INSERT INTO books (title, year, series_id) VALUES ("Prisoner of Azkaban", 1999, 1);
INSERT INTO books (title, year, series_id) VALUES ("The Fellowship of the Ring", 1954, 2);
INSERT INTO books (title, year, series_id) VALUES ("The Return of the King", 1955, 2);
INSERT INTO books (title, year, series_id) VALUES ("Goblet of FIre", 2000, 1);
INSERT INTO books (title, year, series_id) VALUES ("The Two Towers", 1954, 2);

INSERT INTO characters (name, motto, species, author_id) VALUES ("Hermione Granger", "leviosaaaa", "human", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Legolas", "??", "elf", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Lord Voldemort", "magic is might", "human", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Ron Weasley", "??", "human", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Gandalf", "you cannot pass", "maia", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Frodo Baggins", "frodo lives", "hobbit", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Neville Longbottom", "??", "human", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Gollum", "my precioussss", "hobbit", 2);

INSERT INTO subgenres (name) VALUES ("magical realism");
INSERT INTO subgenres (name) VALUES ("sword and sorcery");

INSERT INTO authors (name) VALUES ("JK Rowling");
INSERT INTO authors (name) VALUES ("J.R.R. Tolkien");

INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
