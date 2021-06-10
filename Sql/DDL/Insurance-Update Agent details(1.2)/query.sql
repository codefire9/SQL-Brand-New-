Update t_agent
set target_policy_sum=
case
when upper(agent_city)='PUNE' and upper(agent_id) like 'M%'
then 400000
when upper(agent_city)='CHENNAI' and upper(agent_id) like 'M%'
then 250000
else target_policy_sum
end;