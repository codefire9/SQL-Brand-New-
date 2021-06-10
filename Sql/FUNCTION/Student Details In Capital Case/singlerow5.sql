select student_id,upper(student_name) as NAME,department,phone_no
from student_details 
where address='BANGALORE'
order by student_id;