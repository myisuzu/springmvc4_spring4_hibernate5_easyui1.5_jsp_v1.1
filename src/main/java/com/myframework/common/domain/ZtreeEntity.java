package com.myframework.common.domain;

import java.util.Set;

/**
 * zTree组件通用实体类
 * @author 马元
 * @date 2019年7月6日
 * @version 1.0
 */
public class ZtreeEntity<T> extends Entity {
	
	/**
	 * 节点唯一标识（加载远程数据）
	 */
	private Integer id;
	
	/**
	 * 节点名称
	 */
	private String name;
	
	/**
	 * 节点链接的目标 URL
	 */
	private String url;
	
	/**
	 * true[1] 父节点
	 * false[0] 子节点
	 */
	private boolean isParent;

	/**
	 * 上级	
	 */
	private T parent;
	
	/**
	 * 子集合
	 */
	private Set<T> children;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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

	public boolean getIsParent() {
		return isParent;
	}

	public void setIsParent(boolean isParent) {
		this.isParent = isParent;
	}

	public T getParent() {
		return parent;
	}

	public void setParent(T parent) {
		this.parent = parent;
	}

	public Set<T> getChildren() {
		return children;
	}

	public void setChildren(Set<T> children) {
		this.children = children;
	}

}
