update t_doctor set fees=350 
where specialization="ENT" and doctor_name like "J%";
update t_doctor set fees=600 
where specialization="DERMA" and doctor_name like "J%";
update t_doctor set fees=null 
where specialization="SURGEON" and doctor_name like "J%";
update t_doctor set fees=null 
where specialization="ORTHO" and doctor_name like "J%";
