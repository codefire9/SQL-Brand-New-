select p.patient_id,p_first_name,p_age,app_number,app_date
from appointment a join patient p on a.patient_id=p.patient_id
where app_reason='FEVER' order by 1;