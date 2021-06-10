select s.student_id,student_name,department,DOJ,r.room_id,
room_type from student_details s join admission_details a 
on s.student_id=a.student_id join room_details r
on r.room_id=a.room_id order by 1;