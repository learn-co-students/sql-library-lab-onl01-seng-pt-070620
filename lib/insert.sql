INSERT INTO series(title,author_id,subgenre_id)
VALUES ('some series title', 1, 2),
('some series title 2', 2, 1);

INSERT INTO subgenres(name)
VALUES ('Horror'), ('Action');

INSERT INTO authors(name)
VALUES ('Author 1'), ('Author 2');

INSERT INTO books(title,year,series_id)
VALUES ('Title belonging to series 1', 2002, 1),
('ANOTHER Title belonging to series 1', 2005, 1),
('Title belonging to series 2', 2002, 2),
('ANOTHER Title belonging to series 2', 2005, 2),
('Title belonging to series 3', 2002, 3),
('ANOTHER Title belonging to series 3', 2005, 3);

INSERT INTO characters(name,motto,species,author_id)
VALUES ('John','JohnsMotto','JohnSpecies',1),
('Katie','KatiesMotto','speciesKatie',2),
('Person','Personmotto','Personspecies',1),
('Alexa','Alexamotto','Alexaspecies',2),
('Craig','Craigmotto','Craigspecies',1),
('Tim','Timmotto','Timspecies',2),
('Eric','Ericmotto','Ericspecies',1),
('Gaby','Gabymotto','Gabyspecies',2);

INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 2), (5, 1, 3), (6, 2, 3), (7, 3, 3), (8, 1, 4);

INSERT INTO character_books (id, book_id, character_id) VALUES (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6), (13, 4, 7), (14, 5, 7), (15, 6, 7), (16, 4, 8);