def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books ORDER BY year LIMIT 3"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS cnt FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors, subgenres INNER JOIN series ON series.subgenre_id = subgenres.id AND series.author_id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series, authors, subgenres INNER JOIN characters ON series.author_id = authors.id AND series.subgenre_id = subgenres.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(species) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name)
  FROM character_books
  INNER JOIN characters
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(name) DESC"
end
