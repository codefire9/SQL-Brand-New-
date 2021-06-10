select  distinct c.customer_id,c.customer_name,count(h.hall_id) as NO_OF_BOOKING
from t_customer_details c
right join t_hall_booking h
on c.customer_id = h.customer_id
where h.event_date like '2020%'
group by c.customer_id
having c.customer_name like 'S%'
order by 2;