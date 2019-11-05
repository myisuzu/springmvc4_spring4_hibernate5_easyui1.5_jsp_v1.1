package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;
import com.myframework.sysmgr.domain.DataDict;

/**
 * 新闻实体类（首页新品速递、培训新闻、原创新闻等）
 * @author 马元
 * @date 2019年6月26日
 * @version 1.0
 */
public class News extends Entity {

	private String title; //新闻标题
	private String content; //新闻内容
	private DataDict type; //新闻分类
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public DataDict getType() {
		return type;
	}
	public void setType(DataDict type) {
		this.type = type;
	}
	
	
}
