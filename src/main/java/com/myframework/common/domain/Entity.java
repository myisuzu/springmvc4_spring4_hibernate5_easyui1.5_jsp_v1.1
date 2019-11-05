package com.myframework.common.domain;

/**
 * 通用实体类（普通实体类需要继承这个类）
 * @author 马元
 * @date 2019年7月6日
 * @version 1.0
 */
public class Entity {

	/**
	 * 主键
	 */
	private Integer id;
	
	/**
	 * 排序字段（新增记录自动加1）
	 */
	private int sort;
	
	/**
	 * 是否启用：0启用，1不启用（记录逻辑删除控制字段）
	 */
	private int enable;
	
	/**
	 * 添加日期
	 */
	private String addDate;
	
	/**
	 * 更新日期
	 */
	private String updateDate;
	
	/**
	 * 备注
	 */
	private String remark;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getSort() {
		return sort;
	}

	public void setSort(int sort) {
		this.sort = sort;
	}

	public int getEnable() {
		return enable;
	}

	public void setEnable(int enable) {
		this.enable = enable;
	}

	public String getAddDate() {
		return addDate;
	}

	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
