package com.myframework.sysmgr.dao;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;
import com.myframework.common.dao.CommonDao;
import com.myframework.sysmgr.domain.Role;

@Repository
public class RoleDao extends CommonDao<Role> {

	/**
	 * 插入或更新角色权限表记录（先根据role_id删除记录，在插入记录）
	 * @param roleId 角色id
	 * @param purviewIds 权限id数组
	 */
	public void add(int roleId, String[] purviewIds) {
		try {
			getJdbcTemplate().execute("call p_role_purview(" + roleId + ", \"" + StringUtils.join(purviewIds, ",") + "\")");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}