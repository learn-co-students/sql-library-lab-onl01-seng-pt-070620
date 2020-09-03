INSERT INTO series (id, title, author_id, subgenre_id) VALUES 
    (1, 'the matrix', 1, 1),
    (2, 'the ring', 2, 2);

INSERT INTO books (id, title, year, series_id) VALUES 
    (1, 'the power of now', 2010, 1),
    (2, 'the new earth', 2010, 2),
    (3, 'sapient', 2010, 3),
    (4, 'there is a god', 2010, 4),
    (5, 'enlightenment now', 2010, 5),
    (6, 'the new jim crow', 2010, 6);

INSERT INTO characters (id, name, motto, species, author_id) VALUES 
    (1, 'neo', 'it is done', 'savior', 1),
    (2, 'morphes', 'i believe', 'mentor', 2),
    (3, 'trinnity', 'dodge this', 'lover', 3),
    (4, 'dexter', 'you deserve it', 'killer', 4),
    (5, 'john', 'you are dead', 'low key', 5),
    (6, 'snake', 'no words', 'hero', 6),
    (7, 'leon', 'ada', 'solo', 7),
    (8, 'chris', 'jill!', 'leader', 8);

INSERT INTO subgenres (id, name) VALUES
    (1, 'fantasy'),
    (2, 'sci-fi');

INSERT INTO authors (id, name) VALUES
    (1, 'john green'),
    (2, 'karl marx');

INSERT INTO character_books (id, book_id, character_id) VALUES
    (1, 1, 1), 
    (2, 1, 2), 
    (3, 2, 2), 
    (4, 3, 2), 
    (5, 1, 3), 
    (6, 2, 3), 
    (7, 3, 3), 
    (8, 1, 4),
    (9, 4, 5), 
    (10, 4, 6), 
    (11, 5, 6), 
    (12, 6, 6), 
    (13, 4, 7), 
    (14, 5, 7), 
    (15, 6, 7), 
    (16, 4, 8);