package com.myframework.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;

/**
 * 公共Controller（含有逻辑删除方法）
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
public class CommonDisableController<T> {

	@Autowired
	private CommonService<T> commonService;
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return commonService.disable(id);
	}
	
}
