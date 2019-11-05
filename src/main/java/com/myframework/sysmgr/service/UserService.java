package com.myframework.sysmgr.service;

import java.util.List;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.pojo.EasyUIDataGrid;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.ConfigUtil;
import com.myframework.sysmgr.dao.UserDao;
import com.myframework.sysmgr.domain.User;

@Service
public class UserService extends CommonService<User> {

	@Autowired
	private UserDao userDao;
	
	@Override
	public Msg add(User user) {
		try {
			user.setPassword(DigestUtils.md5Hex(user.getUsername() + ConfigUtil.userInitPwd));
			userDao.add(user);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Override
	public Msg update(User user) {
		try {
			User u = userDao.findById(user.getId());
			u.setTruename(user.getTruename());
			userDao.update(u);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void updatePassword(User user, String newPassword) {
		try {
			User exitUser = userDao.findById(user.getId());
			String digest = DigestUtils.md5Hex(exitUser.getUsername() + newPassword);
			exitUser.setPassword(digest);
			userDao.update(exitUser);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public Msg initPwd(Integer[] ids) {
		try {
			for (int i=0; i<ids.length; i++) {
				User user = userDao.findById(ids[i]);
				user.setPassword(DigestUtils.md5Hex(user.getUsername() + ConfigUtil.userInitPwd));
				userDao.update(user);
			}
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public User login(String username, String password) {
		User user = null;
		try {
			user = userDao.findByUsernameAndPassword(username, DigestUtils.md5Hex(username + password));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return user;
	}
	
	public EasyUIDataGrid<User> getPageBean(int pageNo, int pageSize) {
		EasyUIDataGrid<User> pb = null;
		try {
			int total = userDao.findTotal();
			List<User> list = userDao.findList(pageNo, pageSize);
			pb = new EasyUIDataGrid<>(total, list);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return pb;
	}

	/**
	 * 为用户分配角色
	 * @param userId 用户id
	 * @param roleIds 角色id数组
	 * @return
	 */
	public Msg add(int userId, String[] roleIds) {
		try {
			userDao.add(userId, roleIds);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Msg.fail();
			//throw new RuntimeException(e);
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
			list = userDao.findUserPurview();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

}
