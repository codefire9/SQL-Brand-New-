SELECT DISTINCT p.PLAYER_ID,p.PLAYER_NAME,p.PLAYER_CITY from t_player p
join t_match_score_card s on p.player_id=s.player_id
join t_match_record r on r.match_id=s.match_id
WHERE s.waysof_dismissal='STUMPED' AND r.played_city='BANGALORE'
order by player_name desc;