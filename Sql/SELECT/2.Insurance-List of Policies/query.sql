select distinct p.policy_name, p.policy_type
from t_policy p, t_member m
where p.policy_id = m.policy_id
 and m.member_id >= '1'
order by  policy_name, policy_type asc;
