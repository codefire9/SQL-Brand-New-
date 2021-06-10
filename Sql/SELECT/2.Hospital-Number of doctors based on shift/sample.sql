select h.shift_time as SHIFT_TIME,count(h.available_doctor) AS NUMBER_OF_DOCTORS from t_hospital h
join t_doctor d on d.doctor_id=h.available_doctor
where specialization = 'SURGEON'
group by shift_time
having count(available_doctor)>=1
order by shift_time desc;

