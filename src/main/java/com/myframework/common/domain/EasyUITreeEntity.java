package com.myframework.common.domain;

import java.util.Set;

/**
 * EasyUITree组件通用实体类
 * @author 马元
 * @date 2019年7月6日
 * @version 1.0
 */
public class EasyUITreeEntity<T> extends Entity {
	
	/**
	 * 节点唯一标识（加载远程数据）
	 */
	private Integer id;
	
	/**
	 * 节点名称
	 */
	private String name;
	
	/**
	 * 节点状态
	 * 父节点：closed,不自动展开该节点,文件夹形式
	 * 子节点：open,默认,叶子节点,非文件夹形式
	 */
	private String state;
	
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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
