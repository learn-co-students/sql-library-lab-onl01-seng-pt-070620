def select_books_titles_and_years_in_first_series_order_by_year
  "/* select_books_titles_and_years_in_first_series_order_by_year */
SELECT
	books.title,
	books.year
FROM
	books
WHERE
	books.series_id IS 1
ORDER BY
	books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "/* select_name_and_motto_of_char_with_longest_motto */
SELECT
	characters.name,
	characters.motto
FROM
	characters
	order by length(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "/* select_value_and_count_of_most_prolific_species */
SELECT
	species,
	count(species)
FROM
	characters
WHERE
	species = (
		SELECT
			max(species)
		FROM
			characters)"
end

def select_name_and_series_subgenres_of_authors
  "/* select_name_and_series_subgenres_of_authors */
SELECT
	authors.name,
	subgenres.name
FROM
	authors
	JOIN series ON series.author_id = authors.id
	JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "/* select_series_title_with_most_human_characters */
SELECT
	series.title
FROM
	characters
	join series on series.author_id = characters.author_id
	group by species
	having MAX(species = 'human')"
end

def select_character_names_and_number_of_books_they_are_in
  "/* select_character_names_and_number_of_books_they_are_in */
SELECT
	characters.name,
	count(book_id)
FROM
	characters
	JOIN character_books ON characters.id = character_books.character_id
	group by characters.name
	ORDER BY count(book_id) DESC, characters.name ASC"
end
