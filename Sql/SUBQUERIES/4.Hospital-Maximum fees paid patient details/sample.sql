select p.patient_name , d.doctor_name , d.fees as 'fees_paid' , h.shift_time as 'checkup_done' 
from t_patient p 
join  t_doctor d on p.doctor_id = d.doctor_id
join t_hospital h on h.available_doctor = d.doctor_id
where d.fees>( select max(fees) from t_doctor where specialization = 'DERMA')
order by d.doctor_name , p.patient_name;