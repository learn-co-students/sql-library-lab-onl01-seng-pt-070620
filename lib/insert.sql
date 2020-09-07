INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "First Series", 1, 1), (2, "Second Series", 2, 2);

INSERT INTO books (id, title, series_id) VALUES (1, "Book 1 S1", 1), (2, "Book 2 S1", 1), (3, "Book 3 S1", 1), (4, "Book 1 S2", 2), (5, "Second Book S2", 2), (6, "Third Book S3", 2);

INSERT INTO characters (id, name, author_id, series_id) VALUES (1, "C1", 1, 1), (2, "C2", 1, 1), (3, "Daenerys Targaryen", 1, 1), (4, "Eddard Stark", 1, 1);

INSERT INTO characters (id, name, author_id, series_id) VALUES (5, "Character One", 2, 2), (6, "Character Two", 2, 2), (7, "Character Three", 2, 2), (8, "Character Four", 2, 2);

INSERT INTO subgenres (id, name) VALUES (1, "genre 1"), (2, "genre 2");

INSERT INTO authors (id, name) VALUES (1, "author 1"), (2, "author 2");

INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 2), (5, 1, 3), (6, 2, 3), (7, 3, 3), (8, 1, 4);

INSERT INTO character_books (id, book_id, character_id) VALUES (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6), (13, 4, 7), (14, 5, 7), (15, 6, 7), (16, 4, 8);