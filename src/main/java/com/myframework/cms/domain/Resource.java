package com.myframework.cms.domain;

import com.myframework.common.domain.Entity;
import com.myframework.sysmgr.domain.DataDict;

/**
 * 课程资源实体类（开班信息、线上视频）
 * @author 马元
 * @date 2019年6月26日
 * @version 1.0
 */
public class Resource extends Entity {
	
	private String name; //课程名称
	private String startDate; //开课时间
	private String duration; //课程时长
	private String location; //上课地点
	private String imageId; //课程图片（存放单张图片id,id为CommonFile主键）
	private String imageUrl; //课程图片（存放单张图片url）
	private String videoUrl; //视频路径
	private String intro; //课程介绍
	private String outline; //课程大纲
	private DataDict type; //课程分类

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public DataDict getType() {
		return type;
	}
	public void setType(DataDict type) {
		this.type = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
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
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	
}
