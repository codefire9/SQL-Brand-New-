select movie_id,movie_name,director_name,language from movie_master where certification='U' 
     and duration>130
     order by movie_id;