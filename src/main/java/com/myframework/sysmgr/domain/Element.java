package com.myframework.sysmgr.domain;

import com.myframework.common.domain.Entity;

/**
 * 页面按钮实体类
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
public class Element extends Entity {

	/**
	 * 元素名称
	 */
	private String name;
	
	/**
	 * 按钮样式（css属性,对应按钮图片）
	 */
	private DataDict style;
	
	/**
	 * 单击按钮对应的方法(需要自定义.easyUI属性为handler,但handler为数据库关键字)
	 */
	private String method;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public DataDict getStyle() {
		return style;
	}
	public void setStyle(DataDict style) {
		this.style = style;
	}
	
}
