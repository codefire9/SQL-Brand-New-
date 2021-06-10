select a.agent_id,p.policy_name,sum(p.policy_sum)as policy_sum from t_agent a
join t_member m on m.agent_id=a.agent_id
join t_policy p on p.policy_id=m.policy_id
group by a.agent_id,p.policy_name
having count(m.member_id) >=1
order by a.agent_id,p.policy_name,policy_sum;