SELECT  floor_no AS FLOOR_NO,MAX(cost_inlakh) AS MAX_PRICE FROM t_flat_details
GROUP BY floor_no
ORDER BY floor_no DESC