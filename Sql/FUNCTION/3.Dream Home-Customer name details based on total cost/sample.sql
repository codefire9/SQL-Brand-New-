SELECT c.customer_name,SUM(f.cost_inlakh) FROM t_flat_booking b
JOIN t_flat_details f ON b.flat_no=f.flat_no
JOIN t_customer_details C ON c.customer_id=b.customer_id
WHERE LENGTH(c.customer_name)>'10'
GROUP BY c.customer_name
ORDER BY customer_name