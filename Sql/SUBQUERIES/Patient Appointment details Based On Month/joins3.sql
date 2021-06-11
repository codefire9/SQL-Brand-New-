SELECT DISTINCT(PATIENT_ID),P_FIRST_NAME,P_AGE,ADDRESS,CONTACT_NUMBER
FROM PATIENT
WHERE PATIENT_ID IN(SELECT PATIENT_ID FROM APPOINTMENT WHERE APP_DATE BETWEEN '2019-06-01' AND '2019-06-31')
ORDER BY PATIENT_ID;