select m.player_id, round(avg(m.player_runs)) as average_runs from t_match_score_card m
join t_player p
on p.player_id=m.player_id where player_name like 'S%'
group by m.player_id
order by average_runs desc;