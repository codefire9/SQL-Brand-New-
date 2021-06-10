select b.driver_id, d.driver_name, count(driver_id) as MaxTimesDriven
from driver d
inner join booking b on d.id=b.driver_id
group by b.driver_id
having count(driver_id)>2
order by b.driver_id;