SELECT t_patient.gender, sum(t_doctor.fees) FEES_RECEIVED
FROM t_patient
JOIN t_doctor on t_doctor.doctor_id=t_patient.doctor_id
JOIN t_hospital on t_hospital.available_doctor=t_doctor.doctor_id
WHERE upper(t_hospital.shift_time)="MORNING"
GROUP BY t_patient.gender
ORDER BY t_patient.gender DESC;