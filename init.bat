为t_system_role_purview表创建触发器
	
	insert into t_system_role_purview (role_id, purview_id) select 3,  id from t_system_purview;