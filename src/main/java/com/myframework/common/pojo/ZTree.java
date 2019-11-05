package com.myframework.common.pojo;

/**
 * zTree数据格式对象
 * @author 马元
 * @date 2017年12月29日
 * @version 1.0
 */
public class ZTree {

	/**
	 * 节点id
	 */
	private Integer id;
	
	/**
	 * 父节点id
	 */
	private Integer pid;
	
	/**
	 * 节点名称
	 */
	private String name;
	
	/**
	 * 是否为父节点[true:父节点(文件夹图标), false:子节点(文件图标)]（不加这个属性，默认是子节点）
	 */
	private String isParent;
	
	/**
	 * 父节点文件夹是否为打开状态[true:打开, false:关闭]（不加这个属性，默认为关闭状态）
	 */
	private String open;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIsParent() {
		return isParent;
	}
	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	
}
