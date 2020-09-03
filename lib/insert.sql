INSERT INTO series (id, title, author_id, subgenre_id) VALUES
(1, "HoloLive", 1, 1),
(2, "Ace Attorney", 2, 2);

INSERT INTO subgenres (id, name) VALUES
(1, "Fantasy"),
(2, "Gaming");

INSERT INTO authors (id, name) VALUES
(1, "Theodore Fredrickson"),
(2, "Phoenix Wright");

INSERT INTO books (id, title, year, series_id) VALUES
(1, "OKFAMS", 2020, 1),
(2, "How I Did Nothing Wrong", 2020, 1),
(3, "Sora's friends", 2018, 1),
(4, "Justice for All", 2002, 2),
(5, "Trials and Tribulations", 2004, 2),
(6, "Spirit of Justice", 2016, 2);

INSERT INTO characters (id, name, motto, species, author_id) VALUES
(1, "Nekomata Okayu", "Mogu Mogu", "Cat", 1),
(2, "Inugami Korone", "Yubi!", "Dog", 1),
(3, "Shirakami Fubuki", "Kon Kon Kitsune", "Fox", 1),
(4, "Nakiri Ayame", "Konnakiri", "Oni", 1),
(5, "Ookami Mio", "Konbanmion", "Wolf", 1),
(6, "Oozora Subaru", "Shuba Shuba", "Human", 1),
(7, "Larry Butz", "When something smells, it's usually the Butz.", "Human", 2),
(8, "Dick Gumshoe", "That's Detective Gumshoe to you, pal!", "Human", 2);

INSERT INTO character_books (id, book_id, character_id) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1),
(16, 1, 1);