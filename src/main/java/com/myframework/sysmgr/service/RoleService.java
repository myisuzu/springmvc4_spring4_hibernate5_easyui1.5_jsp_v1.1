package com.myframework.sysmgr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.sysmgr.dao.RoleDao;
import com.myframework.sysmgr.domain.Role;

/**
 * 角色管理
 * @author 马元
 * @date 2019年11月5日
 * @version 1.0
 */
@Service
public class RoleService extends CommonService<Role> {

	@Autowired
	private RoleDao roleDao;
	
	/**
	 * 为角色分配权限
	 * @param roleId 角色id
	 * @param purviewIds 权限id数组
	 * @return
	 */
	public Msg add(int roleId, String[] purviewIds) {
		try {
			roleDao.add(roleId, purviewIds);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
