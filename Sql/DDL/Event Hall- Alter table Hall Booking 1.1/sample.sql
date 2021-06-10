alter table t_hall_booking
modify hall_id varchar(10) not null;
alter table t_hall_booking
add foreign key(hall_id) references t_hall_details(hall_id);