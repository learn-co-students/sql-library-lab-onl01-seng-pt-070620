INSERT INTO series (title, author_id, subgenre_id)
    VALUES ("The Lord of the Rings", 1, 1);

INSERT INTO series (title, author_id, subgenre_id)
    VALUES ("The Dresden Files", 2, 2);

INSERT INTO subgenres (name)
    VALUES ("Epic");

INSERT INTO subgenres (name)
    VALUES ("Sorcery");

INSERT INTO authors (name)
    VALUES ("J.R.R. Tolkein");

INSERT INTO authors (name)
    VALUES ("Jim Butcher");

INSERT INTO books (title, year, series_id)
    VALUES ("The Fellowship of the Ring", 1954, 1);

INSERT INTO books (title, year, series_id)
    VALUES ("The Two Towers", 1954, 1);

INSERT INTO books (title, year, series_id)
    VALUES ("The Return of the King", 1955, 1);

INSERT INTO books (title, year, series_id)
    VALUES ("Storm Front", 2000, 2);

INSERT INTO books (title, year, series_id)
    VALUES ("Fool Moon", 2001, 2);

INSERT INTO books (title, year, series_id)
    VALUES ("Grave Peril", 2001, 2);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Frodo", "SAM!", "Hobbit", 1, 1);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Gimli", "Nobody tosses a dwarf!", "Dwarf", 1, 1);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Legolas", "They are taking the hobbits to Isengard!", "Elf", 1, 1);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Aragorn", "You bow to no one.", "Dunedain", 1, 1);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Harry Dresden", "Hmmm", "Wizard", 2, 2);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Karrin Murphy", "What is it Dresden?", "Human", 2, 2);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Bianca St. Claire", "Grrrrr", "Vampire", 2, 2);

INSERT INTO characters (name, motto, species, series_id, author_id)
    VALUES ("Bob", "Something snarky in a British accent...", "Air Spirit", 2, 2);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 2);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 3);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 2);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 3);

INSERT INTO character_books (character_id, book_id)
    VALUES (3, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (4, 3);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 2);

INSERT INTO character_books (character_id, book_id)
    VALUES (1, 3);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 2);

INSERT INTO character_books (character_id, book_id)
    VALUES (2, 3);

INSERT INTO character_books (character_id, book_id)
    VALUES (3, 1);

INSERT INTO character_books (character_id, book_id)
    VALUES (4, 2);