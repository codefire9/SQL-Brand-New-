select player_city as PLAYER_CITY, count(player_id) as NUMBER_OF_PLAYERS from t_player where player_city not in 
(select distinct played_city from t_match_record)
group by player_city
order by NUMBER_OF_PLAYERS,PLAYER_CITY;