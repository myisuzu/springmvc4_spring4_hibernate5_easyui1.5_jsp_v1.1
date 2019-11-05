package com.myframework.sysmgr.domain;

import com.myframework.common.domain.ZtreeEntity;

/**
 * 权限（菜单）
 * @author Administrator
 *
 */
public class Purview extends ZtreeEntity<Purview> {

	/**
	 * 0 菜单
	 * 1 按钮
	 */
	private int isMenu;
	
	/**
	 * 页面元素
	 */
	private Element element;

	public int getIsMenu() {
		return isMenu;
	}

	public void setIsMenu(int isMenu) {
		this.isMenu = isMenu;
	}

	public Element getElement() {
		return element;
	}

	public void setElement(Element element) {
		this.element = element;
	}
	
}
