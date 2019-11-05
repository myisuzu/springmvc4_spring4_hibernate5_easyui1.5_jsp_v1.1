package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;

/**
 * 图片实体类（首页滚动图片）
 * @author 马元
 * @date 2019年6月26日
 * @version 1.0
 */
public class Image extends Entity {
	
	private String imageId; //图片（存放单张图片id,id为CommonFile主键）
	private String imageUrl; //图片（存放单张图片url）
	
	public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

}
