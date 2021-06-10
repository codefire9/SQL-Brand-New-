
select count(b.member_id) as NUMBER_OF_MEMBERS,a.agent_name as AGENT_NAME
from t_agent a join t_member b
on a.agent_id=b.agent_id
where a.agent_name like 'S%' or a.agent_name like 's%'
group by a.agent_name
order by AGENT_NAME,NUMBER_OF_MEMBERS asc;