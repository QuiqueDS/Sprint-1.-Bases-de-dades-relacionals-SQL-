-- EXERCICI 3

SELECT DISTINCT genre_name, COUNT(tb_movie.movie_genre_id) AS movie_number FROM tb_genre
INNER JOIN tb_movie ON tb_genre.genre_id = tb_movie.movie_genre_id
WHERE tb_movie.movie_genre_id = tb_genre.genre_id GROUP BY genre_name
ORDER BY movie_number DESC;