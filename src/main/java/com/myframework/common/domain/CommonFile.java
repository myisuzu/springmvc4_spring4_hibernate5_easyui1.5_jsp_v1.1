package com.myframework.common.domain;

/**
 * 上传文件
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class CommonFile extends Entity {

	private String url; //文件网络访问地址
	private String name; //文件名称
	private String size; //文件大小，字节B（1KB=1024字节，1字节=8位）
	private String type; //文件类型
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
