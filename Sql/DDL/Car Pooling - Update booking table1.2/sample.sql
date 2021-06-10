update booking
set fare=(select min(distance)*11 from city_locations ct 
join booking b On b.pickup_from=ct.city1 AND b.drop_at=ct.city2);