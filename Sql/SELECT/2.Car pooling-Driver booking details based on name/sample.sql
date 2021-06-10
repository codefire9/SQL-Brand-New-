select a.booking_no,b.user_name,c.driver_name,a.pickup_from,a.drop_at,d.distance
from booking a join customer b on a.customer_id=b.id
               join driver c on a.driver_id=c.id 
               join city_locations d on ((a.pickup_from=d.city1 and a.drop_at=d.city2)or(a.pickup_from=d.city2 and a.drop_at=d.city1))
               where upper(c.driver_name)='JOE AMAL'
               order by d.distance