package com.myframework.common.pojo;

/**
 * jquery插件fancybox的数据类型
 * @author 马元
 * @date 2018年8月28日
 * @version 1.0
 */
public class Fancybox {

	/**
	 * 图片路径(必须)
	 */
	private String href;
	
	/**
	 * 图片标题（非必须）
	 */
	private String title;
	
	public Fancybox() {
	}
	
	public Fancybox(String href, String title) {
		this.href = href;
		this.title = title;
	}

	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
