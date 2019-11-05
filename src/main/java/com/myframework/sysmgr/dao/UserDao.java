package com.myframework.sysmgr.dao;

import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;
import com.myframework.common.dao.CommonDao;
import com.myframework.common.util.Constant;
import com.myframework.sysmgr.domain.User;

@Repository
@SuppressWarnings("all")
public class UserDao extends CommonDao<User> {
	
	public User findByUsernameAndPassword(String username, String password) {
		User user = null;
		try {
			String hql = "from User u where u.username = ? and u.password = ? and u.enable = " + Constant.ENABLE_0;
			List<User> userList = getSession().createQuery(hql).setParameter(0, username).setParameter(1, password)
					.list();
			if (userList != null && userList.size() > 0) {
				user = userList.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return user;
	}
	
	public int findTotal() {
		int total = 0;
		try {
			String sql = "select count(*) from t_system_user where enable = 0 and username != 'admin'";
			total = getJdbcTemplate().queryForObject(sql, Integer.class);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}

	public List<User> findList(int pageNo, int pageSize) {
		List<User> list = null;
		try {
			String sql = "select * from t_system_user where enable = 0 and username != 'admin'";
			list = getSession()
					.createSQLQuery(sql)
					.addEntity(User.class)
					.setFirstResult((pageNo-1)*pageSize)
					.setMaxResults(pageSize)
					.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

	/**
	 * 插入或更新用户角色表记录（先根据user_id删除记录，在插入记录）
	 * @param userId 用户id
	 * @param roleIds 角色id数组
	 */
	public void add(int userId, String[] roleIds) {
		try {
			/*
			String sql = "replace into t_system_user_role (user_id, role_id) select " + userId + ", id from t_system_role where id in (" + StringUtils.join(roleIds, ",") + ")";
			getJdbcTemplate().update(sql);
			*/
			getJdbcTemplate().execute("call p_user_role(" + userId + ", \"" + StringUtils.join(roleIds, ",") + "\")");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	/**
	 * 查询所有用户名和权限字符串集合
	 * List<(ls,cms/image/listUI), (ls,cms/image/add)...>
	 * @return
	 */
	public List<String> findUserPurview() {
		List<String> list = null;
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("select concat(username,',', url) from (")
			  .append("select a.username, d.url from t_system_user a, t_system_user_role b, t_system_role_purview c, t_system_purview d ")
			  .append("where a.enable = 0 and d.enable = 0 and d.url is not null and d.url != '' and a.id = b.user_id and b.role_id = c.role_id and c.purview_id = d.id")
			  .append(") t");
			list = getJdbcTemplate().queryForList(sb.toString(), String.class);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

}
