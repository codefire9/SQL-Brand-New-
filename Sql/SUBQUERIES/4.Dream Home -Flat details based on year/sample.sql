select a.flat_no FLAT_NO, b.size SIZE, b.area area
from t_flat_booking a
join t_flat_details b
on a.flat_no = b.flat_no
where year(a.registration_date)
in (select year(b.registration_date)
from t_customer_details a
join t_flat_booking b 
on a.customer_id=b.customer_id
where upper(a.customer_name='Niraj Kumar'))
order by area asc,a.flat_no desc;