def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(motto)DESC LIMIT 1; "
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(*) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1; "
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name 
    FROM authors 
    JOIN series 
    ON authors.id = series.author_id 
    JOIN subgenres 
    ON subgenres.id = series.subgenre_id;
  SQL
  #"SELECT authors.name, subgenres.name FROM authors JOIN series ON authors.id = series.author_id JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN authors ON authors.id = series.author_id JOIN characters ON characters.author_id = authors.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) DESC LIMIT 1;"
  # characters have species 
  # characters.author_id is foreign key to the primary key of id in author table
  # author.id exists in series.author_id as the foreign key to that table 
  # we need to query the 
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
  SELECT characters.name, COUNT(*)
  AS book_count 
  FROM character_books 
  JOIN characters 
  ON character_books.character_id = characters.id
  GROUP BY characters.name 
  ORDER BY book_count DESC,
  characters.name
  SQL
end
