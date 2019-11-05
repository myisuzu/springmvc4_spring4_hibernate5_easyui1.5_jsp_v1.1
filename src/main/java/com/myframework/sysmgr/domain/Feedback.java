package com.myframework.sysmgr.domain;

import com.myframework.common.domain.Entity;

public class Feedback extends Entity {

	/**
	 * 反馈内容
	 */
	private String content; //
	
	/**
	 * 反馈人
	 */
	private User user;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
