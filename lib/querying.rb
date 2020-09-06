def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series_id = 1";
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  GROUP BY motto
  LIMIT 1";
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(*) 
  FROM characters
  GROUP BY species 
  ORDER BY COUNT(species) DESC
  LIMIT 1";
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM AUTHORS
  INNER JOIN subgenres
  ON subgenres.id = authors.id
  ORDER BY authors.name";
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON characters.author_id = series.author_id
  WHERE species = 'human'
  LIMIT 1";
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS book_count
  FROM characters
  INNER JOIN character_books
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY book_count DESC, name ASC";
end
