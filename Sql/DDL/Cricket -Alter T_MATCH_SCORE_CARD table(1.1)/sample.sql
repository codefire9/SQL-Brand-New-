alter table t_match_score_card add foreign key (match_id) references t_match_record (match_id);
alter table t_match_score_card add foreign key (player_id) references t_player(player_id);