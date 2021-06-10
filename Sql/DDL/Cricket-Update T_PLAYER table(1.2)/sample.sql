update t_player 
set total_wickets=case 
when(player_city='BANGALORE' and player_name like 'A%') 
THEN total_wickets+5
when(player_city='DELHI' and player_name like 'A%') 
THEN total_wickets+7
ELSE total_wickets
END;