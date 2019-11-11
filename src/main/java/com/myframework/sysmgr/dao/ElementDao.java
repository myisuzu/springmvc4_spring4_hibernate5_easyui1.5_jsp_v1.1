package com.myframework.sysmgr.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.myframework.common.dao.CommonDao;
import com.myframework.common.util.Constant;
import com.myframework.sysmgr.domain.Element;

@Repository
public class ElementDao extends CommonDao<Element> {
	
	/**
	 * 查询子权限按钮集合
	 * @param purviewId 父级权限id
	 * @return
	 */
	public List<Map<String, Object>> findListByPurviewId(int purviewId) {
		List<Map<String, Object>> list = null;
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("select a.id, a.name, (select name from t_system_datadict where id = a.style_id) iconCls, a.method handler, b.url ")
			  .append("from t_system_element a, t_system_purview b ")
			  .append("where a.id = b.element_id and a.enable = ? and b.enable = ? and b.pid = ? ")
			  .append("order by a.sort asc");
			list = getJdbcTemplate().queryForList(sb.toString(), Constant.ENABLE_0, Constant.ENABLE_0, purviewId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询当前用户子权限按钮集合
	 * @param purviewId 父级权限id
	 * @param userId 用户id
	 * @return
	 */
	public List<Map<String, Object>> findListByPurviewId(int purviewId, int userId) {
		List<Map<String, Object>> list = null;
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("select a.id, a.name, (select name from t_system_datadict where id = a.style_id) iconCls, a.method handler, b.url ")
			.append("from t_system_element a, t_system_purview b ")
			.append("where a.id = b.element_id and a.enable = ? and b.enable = ? and b.pid = ? ")
			.append("and b.id in (select purview_id from t_system_role_purview where role_id in (select role_id from t_system_user_role where user_id = ?)) ")
			.append("order by a.sort asc");
			list = getJdbcTemplate().queryForList(sb.toString(), Constant.ENABLE_0, Constant.ENABLE_0, purviewId, userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
}
