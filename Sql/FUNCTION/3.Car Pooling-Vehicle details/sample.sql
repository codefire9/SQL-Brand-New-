select c.vehicle_model,c.vehicle_type,sum(ci.distance)from car c
join booking b on b.vehicle_no=c.vehicle_no
join city_locations ci on (ci.city1=b.pickup_from and ci.city2=b.drop_at)or(ci.city2=b.pickup_from and ci.city1=b.drop_at)
group by c.vehicle_type,c.vehicle_model
order by sum(ci.distance);