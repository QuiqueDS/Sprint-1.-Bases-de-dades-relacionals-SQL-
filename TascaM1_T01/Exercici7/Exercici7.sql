-- Exercici 7
SELECT * 
FROM tb_movie m
INNER JOIN tb_genre g ON m.movie_genre_id = g.genre_id;
-- WHERE m.movie_title = 'Ocho Apellidos Catalanes'

-- Codi resposta
UPDATE tb_movie m
INNER JOIN tb_genre g 
    ON g.genre_id = m.movie_genre_id
SET m.movie_genre_id = 3
WHERE m.movie_title = 'Ocho Apellidos Catalanes';