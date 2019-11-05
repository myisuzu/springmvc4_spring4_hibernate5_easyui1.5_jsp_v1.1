package com.myframework.cms.domain;

import com.myframework.common.domain.ZtreeEntity;

/**
 * 课程分类实体类（首页全部课程）
 * @author 马元
 * @date 2019年6月26日
 * @version 1.0
 */
public class Course extends ZtreeEntity<Course> {
	
	private String content; //课程内容
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
