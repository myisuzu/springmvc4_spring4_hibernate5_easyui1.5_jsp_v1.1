package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;

/**
 * 学生
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
public class Student extends Entity {

	/**
	 * 姓名
	 */
	private String name;
	
	/**
	 * 手机号（作为登录账号）
	 */
	private long phone;
	
	/**
	 * 密码
	 */
	private String password;
	
	/**
	 * 性别（true:男, false:女）
	 */
	private boolean gender;
	
	/**
	 * 所属班级
	 */
	private Classes classes;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
}
