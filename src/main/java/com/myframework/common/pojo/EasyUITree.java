package com.myframework.common.pojo;

/**
 * EasyUI-Tree组件数据格式对象
 * @author 马元
 * @date 2017年12月29日
 * @version 1.0
 */
public class EasyUITree {

	/**
	 * 节点id, 对加载远程数据很重要
	 */
	private Integer id;
	
	/**
	 * 节点名称（可以配置为其他名称）
	 */
	private String text;
	
	/**
	 * 节点状态[closed:父节点(文件夹形式), open:叶子节点(非文件夹形式)]
	 */
	private String state;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
