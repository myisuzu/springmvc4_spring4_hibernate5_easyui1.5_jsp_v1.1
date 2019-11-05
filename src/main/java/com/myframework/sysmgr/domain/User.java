package com.myframework.sysmgr.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import com.myframework.common.domain.Entity;
import com.myframework.common.util.CollectionUtil;

/**
 * 用户
 * @author Administrator
 *
 */
public class User extends Entity {
	
	/**
	 * 登录用户名
	 */
	private String username;
	
	/**
	 * 真实姓名
	 */
	private String truename;
	
	/**
	 * 登录密码
	 */
	private String password;
	
	/**
	 * 主题
	 */
	private String theme;
	
	/**
	 * 角色集合
	 */
	private Set<Role> roleSet;
	
	/**
	 * 获取用户的角色集合的字符串表示形式
	 * @return
	 */
	public String getRoles() {
		List<String> roleList = new ArrayList<>();
		for (Role role : roleSet) {
			roleList.add(role.getName());
		}
		String roles = StringUtils.join(CollectionUtil.stringList2Array(roleList), ",");
		return roles;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public Set<Role> getRoleSet() {
		return roleSet;
	}
	public void setRoleSet(Set<Role> roleSet) {
		this.roleSet = roleSet;
	}
	
}
