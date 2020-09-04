def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
   FROM books
   WHERE series_id = '1'
   ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
   FROM characters
   GROUP BY name, motto 
   ORDER BY motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
   FROM characters
   GROUP BY species
   HAVING COUNT(species)
   ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
   FROM subgenres
   INNER JOIN authors
   ON authors.id = series.author_id
   JOIN series
   ON series.subgenre_id = subgenres.id "
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM series
  INNER JOIN authors
  ON Series.author_id = authors.id
  JOIN characters
  ON characters.author_id = authors.id 
  GROUP BY Series.title LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(character_books.id)
   FROM characters
   INNER JOIN character_books
   ON Characters.id = character_books.character_id
   JOIN books
   ON Character_books.book_id = Books.id
   GROUP BY character_books.character_id
   ORDER BY COUNT(character_books.id) DESC"
end


# CREATE TABLE character_books(
#   id INTEGER PRIMARY KEY,
#   book_id INTEGER,
#   character_id INTEGER
# );

# CREATE TABLE characters(
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   species TEXT,
#   motto TEXT,
#   author_id INTEGER
# );

# CREATE TABLE books(
#   id INTEGER PRIMARY KEY,
#   title TEXT,
#   year INTEGER,
#   series_id INTEGER
# );