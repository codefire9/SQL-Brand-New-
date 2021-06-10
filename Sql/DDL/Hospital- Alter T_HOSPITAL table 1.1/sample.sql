alter table t_hospital
add foreign key (available_doctor) references t_doctor(doctor_id);