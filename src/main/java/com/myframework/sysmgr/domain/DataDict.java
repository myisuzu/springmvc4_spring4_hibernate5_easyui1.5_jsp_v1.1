package com.myframework.sysmgr.domain;

import com.myframework.common.domain.EasyUITreeEntity;

/**
 * 数据字典实体类
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
public class DataDict extends EasyUITreeEntity<DataDict> {

	/**
	 * 编码（唯一标识）
	 */
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
}
