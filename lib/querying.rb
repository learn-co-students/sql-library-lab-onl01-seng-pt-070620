def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id = 1 ORDER BY books.year ASC" 
end

# SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id GROUP BY books.series_id HAVING books.series_id = 1 ORDER BY books.year ASC
# Why it only returns one item after using GROUP BY & HAVING
# GROUP BY books.series_id (did not work)
# GROUP BY series.id HAVING series.id = 1 (did not work)
# SELECT series.title FROM series INNER JOIN books ON books.series_id = series.id GROUP BY books.series_id HAVING books.series_id = 1 ORDER BY books.year ASC (did not make sense has no year)

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(*) FROM characters WHERE characters.species = 'human'"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id"
  #"SELECT authors.name, subgenres.name FROM subgenres JOIN series ON series.id = subgenre_id INNER JOIN authors ON series.author_id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN authors ON series.author_id = authors.id INNER JOIN characters ON authors.id = characters.author_id WHERE characters.species ='human' ORDER BY LENGTH(series.title) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) FROM characters JOIN character_books ON characters.id = character_books.character_id INNER JOIN books ON character_books.book_id = books.id GROUP BY characters.name ORDER BY COUNT(books.id) DESC, characters.name"
  #"SELECT characters.name, COUNT(character_books.id) FROM books JOIN character_books ON books.id = character_books.book_id INNER JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY COUNT(character_books.id) DESC"
end
