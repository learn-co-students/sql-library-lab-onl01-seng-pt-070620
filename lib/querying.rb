  def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1 ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1" #wrong
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) from characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series INNER JOIN authors ON authors.id = author_id INNER JOIN subgenres ON subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN books ON books.series_id = series.id
  JOIN character_books ON character_books.book_id = books.id
  JOIN characters ON characters.id = character_books.character_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(*) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) as book_count
  from character_books JOIN characters ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY COUNT(*) DESC, characters.name ASC"
end
