package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;

/**
 * 班级
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
public class Classes extends Entity {

	/**
	 * 班级名称
	 */
	private String name;
	
	/**
	 * 年级
	 */
	private int grade;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
