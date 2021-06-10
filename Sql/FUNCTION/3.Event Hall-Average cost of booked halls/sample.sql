select CITY,round(avg(cost_perday),0) as AVERAGE_COST from t_hall_details 
where hall_id in(Select hall_id from t_hall_booking) and capacity>150
group by CITY
order by average_cost;