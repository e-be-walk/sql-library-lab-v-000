def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series.id = (SELECT MIN(series.id) FROM series)
  ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto 
  FROM characters
  WHERE length(characters.motto) = (SELECT MAX(length(characters.motto)) FROM characters);
  "
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN books
  ON books.series_id = series.id
  JOIN character_books
  ON character_books.book_id = books.id
  JOIN characters
  ON character_books.character_id = characters.id
  WHERE characters.species = 'human'
  ORDER BY COUNT (*) DESC
  LIMIT 1;
  "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
