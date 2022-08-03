-- * *  EXERCICI 6   * * 
   
SELECT * 
FROM tb_movie m
INNER JOIN tb_movie_person mp ON m.movie_id = mp.movie_id;
  
ALTER TABLE tb_movie
DROP CONSTRAINT fk_movie_genre; 
ALTER TABLE tb_movie
	ADD CONSTRAINT fk_movie_genre_Cascade
    FOREIGN KEY (movie_genre_id) REFERENCES tb_genre(genre_id) ON DELETE CASCADE;
    
ALTER TABLE tb_movie_person
DROP CONSTRAINT fk_movper_movie;
ALTER TABLE tb_movie_person
	ADD CONSTRAINT fk_movper_movie_Cascade
    FOREIGN KEY (movie_id) REFERENCES tb_movie (movie_id) ON DELETE CASCADE; 
               
DELETE FROM tb_movie 
WHERE movie_title = 'La Gran Familia Española'; 

SELECT movie_id, movie_title FROM tb_movie;
  
 
