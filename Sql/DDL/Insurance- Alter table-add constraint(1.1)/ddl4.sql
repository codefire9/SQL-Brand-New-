alter table T_MEMBER
ADD foreign key(AGENT_ID) references T_AGENT(agent_id),
ADD foreign key(POLICY_ID) references T_POLICY(policy_id);