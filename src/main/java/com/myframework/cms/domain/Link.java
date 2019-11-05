package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;

/**
 * 友情链接实体类（首页友情链接）
 * @author Administrator
 *
 */
public class Link extends Entity {
	
	private String name; //名称
	private String url; //链接地址
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
