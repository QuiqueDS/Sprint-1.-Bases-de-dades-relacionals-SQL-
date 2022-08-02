--  EXERCICI 4

SELECT MP.movie_id, MP.person_id, COUNT(*) AS num_roles FROM tb_movie_person AS MP
GROUP BY MP.movie_id, MP.person_id
order by COUNT(*) DESC;

 SELECT MAX(T.num_roles) FROM
   (
      SELECT MP.movie_id, MP.person_id, COUNT(*) as num_roles
      FROM tb_movie_person AS MP
      GROUP BY MP.movie_id, MP.person_id
   ) AS T;
   
   
   -- 1t query:
   SELECT P.person_name,
      (
         SELECT MAX(T.num_roles) FROM
         (
            SELECT MP.movie_id, MP.person_id, COUNT(*) as num_roles
            FROM tb_movie_person AS MP
            WHERE P.person_id = MP.person_id
            GROUP BY MP.movie_id, MP.person_id
         ) AS T
      ) AS roles_for_movie
   FROM tb_person P
   JOIN tb_movie_person MP
      ON P.person_id = MP.person_id
	GROUP BY P.person_name, roles_for_movie;
    
  -- 2n query:
   SELECT P.person_name,
      (
         SELECT MAX(T.num_roles) FROM
         (
            SELECT MP.movie_id, MP.person_id, COUNT(*) as num_roles
            FROM tb_movie_person AS MP
            WHERE P.person_id = MP.person_id
            GROUP BY MP.movie_id, MP.person_id
         ) AS T
      ) AS roles_for_movie
   FROM tb_person P
   JOIN tb_movie_person MP
      ON P.person_id = MP.person_id
	GROUP BY P.person_name, roles_for_movie
    HAVING roles_for_movie > 1;  
   
   
    

   
    